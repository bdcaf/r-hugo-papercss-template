R := Rscript
RNW_SOURCES := $(shell find content -iname "index.rmd")
RNW_TARGET := $(patsubst %.rmd,%.md,$(RNW_SOURCES))

all: 

page: all_rnw
	rm -rf docs/*
	hugo --minify

all_rnw: $(RNW_TARGET)
test:
	echo $(RNW_TARGET)

content/%/index.md: content/%/index.pre.md
	sed 's|^!\[\(.*\)\](content/.*/\([^/]*\))$$|\{\{< bundle-image name="\2" caption="\1" >\}\}|g' $< > $@
	#cp $< $@

content/%/index.pre.md: content/%/index.rmd
	 $R  -e "knitr::opts_knit[['set']](root.dir = normalizePath('$(@D)'))" \
		-e "knitr::opts_chunk[['set']](cache.path='$(@D)/')" \
		-e "knitr::opts_chunk[['set']](fig.path='$(@D)/')" \
		-e "knitr::knit('$<', output='$@')"

publish: page
	git add docs/
	git commit -am "published"
	git push

clean_index:
	rm $(RNW_TARGET)

server: 
	hugo server
setup: setup_papercss
setup_papercss:
	git submodule update --init --remote
