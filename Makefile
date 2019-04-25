R := Rscript

RMD_SOURCES := $(shell find content/post -iname "source.md")
RMD_TARGET := $(patsubst %/source.md,%/index.md,$(RMD_SOURCES))

RBUNDLE_DIR := content/post
PAGE_DIR := gh-pages

all: 

page: all_rmd
	rm -rf $(PAGE_DIR)/*
	hugo --minify

all_rmd: $(RMD_TARGET)
test:
	echo $(RMD_TARGET)

$(RBUNDLE_DIR)/%/index.md: $(RBUNDLE_DIR)/%/intermediate.wip
	sed 's|^!\[\(.*\)\](\(.*\))$$|\{\{< bundle-figure name="\2" caption="\1" >\}\}|g' $< > $@
	#cp $< $@

$(RBUNDLE_DIR)/%/intermediate.wip: $(RBUNDLE_DIR)/%/source.md
	 cd $(@D); \
	 $R  -e "knitr::knit('$(<F)', output='$(@F)')"

publish: page
	cd $(PAGE_DIR) ;\
	git add . ;\
	git commit -am "published" ;\
	git push

clean: clean_posts
clean_posts:
	find $(RBUNDLE_DIR) -type d -name "figure"
	rm $(RMD_TARGET)

server: 
	hugo server
setup: setup_papercss
setup_papercss:
	git submodule update --init --remote
