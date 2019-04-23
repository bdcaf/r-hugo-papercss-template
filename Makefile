R := Rscript

RNW_SOURCES := $(shell find content -iname "index.rmd")
RNW_TARGET := $(patsubst %.rmd,%.md,$(RNW_SOURCES))

RBUNDLE_DIR := content/post

all: 

page: all_rnw
	rm -rf docs/*
	hugo --minify

all_rnw: $(RNW_TARGET)
test:
	echo $(RNW_TARGET)

$(RBUNDLE_DIR)/%/index.md: $(RBUNDLE_DIR)/%/index.pre.md
	sed 's|^!\[\(.*\)\](content/.*/\([^/]*\))$$|\{\{< bundle-image name="\2" caption="\1" >\}\}|g' $< > $@
	#cp $< $@

$(RBUNDLE_DIR)/%/index.pre.md: $(RBUNDLE_DIR)/%/index.rmd
	 cd $(@D); \
	 $R  -e "knitr::knit('$(<F)', output='$(@F)')"

publish: page
	git add docs/
	git commit -am "published"
	git push

clean: clean_posts
clean_posts:
	find $(RBUNDLE_DIR) -type d -name "figure"
	rm $(RNW_TARGET)

server: 
	hugo server
setup: setup_papercss
setup_papercss:
	git submodule update --init --remote
