---
# vim: set ft=rmarkdown : 
title: "Xkcd Plot"
date: 2019-04-23T18:15:38+02:00
weight: 1
tags:
  - r
  - xkcd
link-citations: yes
draft: true
---

Now let's include the [xkcd package](http://xkcd.r-forge.r-project.org).
In particular I follow the [xkcd-intro](https://cran.r-project.org/web/packages/xkcd/vignettes/xkcd-intro.pdf).

```{r}
devtools::load_all()
```

```{r}
 library(extrafont)
 library(ggplot2)



}else {
   warning("Not xkcd fonts installed!")
 p <- ggplot() + geom_point(aes(x=mpg, y=wt), data=mtcars) +}
p
```


<!--more-->

