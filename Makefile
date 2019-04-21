R := Rscript
RNW_SOURCES := $(shell find content -iname "index.rmd")
RNW_TARGET := $(patsubst %.rmd,%.md,$(RNW_SOURCES))

all: all_rnw
all_rnw: $(RNW_TARGET)
test:
	echo $(RNW_TARGET)
content/%/index.md: content/%/index.rmd
	 $R  -e "knitr::opts_knit[['set']](root.dir = normalizePath('$(@D)'))" \
		-e "knitr::opts_chunk[['set']](cache.path='$(@D)')" \
		-e "knitr::opts_chunk[['set']](fig.path='$(@D)')" \
		-e "knitr::knit('$<', output='$@')"

