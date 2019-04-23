---
title: "use devtools"
author: "Clemens Ager"
date: 2019-04-23T10:34:13+02:00
link-citations: yes
tags: 
  - tips
  - example
---

Although a blog post is not a R package the [devtools](https://cran.r-project.org/web/packages/devtools/index.html) package provides some useful tools.
But who knows maybe a package will sprout from a post.

### plain devtools

Provides some functions to create bundled data.  
I like to use `devtools::load_all()` to load up all R functions from the R subdirectory.

I placed a simple function under 
{{< bundle-file name="R/hello_world.R" caption="R/hello_world.R" >}}

<!--more-->

```{r}
devtools::load_all()
```

Now I can use the function:

```{r}
hello("you")
```



### usethis

Having the post setup with package structure [usethis](https://www.rdocumentation.org/packages/usethis/).


I like how this makes using packages easier.
Say I want to use [kableExtra](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html#getting_started)

So the first chunk is:

```{r, eval=F}
library(knitr)
library(kableExtra)
dt <- mtcars[1:5, 1:6]
```

However `knitr` or `kableExtra` may not have been installed and could get an error.  
This can not only happen to strangers using your code but also when one switches machines.
So weeding through the `library` commands could take some work.
With `use_this` you can declare the required packages.

```{r, eval=F}
usethis::use_package("knitr")
usethis::use_package("kableExtra")
```

Should you start on another machine one quickly could install all missing packages using the command:

```{r, eval = F}
  devtools::install_deps()
```


Now assuming the libraries are all present.

```{r, eval=T}
library(knitr)
library(kableExtra)
dt <- mtcars[1:5, 1:6]
```

and the command will work:
```{r}
kable(dt)
```



