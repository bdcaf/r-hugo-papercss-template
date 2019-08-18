#! /usr/local/bin/R
# build_dir.R Copyright (C) 2019 Clemens Ager
# <clemens.ager@uibk.ac.at> Distributed under
# terms of the MIT license.

render_bundle <- function(source, force) {
    target <- sub("\\.Rmd$", "\\.md", source)
    if (force || (file.exists(target) && file.mtime(target) <
        file.mtime(source))) {
        args <- c("--slave", paste0("-e \"setwd(",
            shQuote(dirname(source)), ")\""), paste0("-e \"knitr::knit(",
            shQuote(basename(source)), ")\""))
        xfun::Rscript(args)
    }
}

build_bundles <- function(dir = "content", force = FALSE) {
    fl <- list.files("content", pattern = "index\\.Rmd$",
        ignore.case = T, recursive = T, full.names = T)

    for (f in fl) {
        render_bundle(fl, force)
    }

}
