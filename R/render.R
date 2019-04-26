#! /usr/local/bin/R
#
# render_hugo.R
# Copyright (C) 2019 Clemens Ager <clemens.ager@uibk.ac.at>
#
# Distributed under terms of the MIT license.
#
# creates a custom plot function for hugo to use a shortcode for the plotted images.
# inspired by render_jekyll in knitr's R/hooks-md.R

library(knitr)

plot_hugo <- function(x, options) {
  pars <- list(name = x,
            label = options[["label"]],
            caption = options[["fig.cap"]],
            class = options[["fig.cssClass"]]
  )
  pars <- pars[!sapply(pars, is.null)]
  vals <- paste0(names(pars),'="', pars, '"',collapse=" ")

  res = sprintf('{{< bundle-figure %s >}}\n',vals)
}

render_hugo <- function( extra = '') {
  render_markdown()
  knit_hooks$set(plot = plot_hugo)
}

render_hugo()
