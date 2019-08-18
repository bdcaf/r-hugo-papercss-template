---
title: "Creating Posts with Blogdown"
date: 2019-08-18T11:25:11+02:00
weight: 1
tags:
  - blogdown
---

I found some interesting note about `blogdown` being able to use page bundles in this [post](https://alison.rbind.io/post/2019-02-21-hugo-page-bundles/). 

<!--more-->

## guide

### set options

I started setting the options as suggested.

```
# in .Rprofile of the website project
if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

options(
  blogdown.author = "Clemens Ager",
  blogdown.ext = ".Rmd",
  blogdown.subdir = "post",
  blogdown.yaml.empty = TRUE,
  blogdown.new_bundle = TRUE,
  blogdown.title_case = TRUE
)

library(blogdown)
```

The `.Rprofile` is supposed to be in the folder where the `config.yaml` is located.
I also added the `library` as it will not interfere with anything here.


### Make a post

`new_post("test_post")`  will create an empty folder with an `index.Rmd`.  
This is good so far.

