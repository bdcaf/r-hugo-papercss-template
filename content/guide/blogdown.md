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
  blogdown.new_bundle = TRUE,
  blogdown.title_case = TRUE
)

source("R/render.R")
source("R/build_dir.R")
```

The `.Rprofile` is supposed to be in the folder where the `config.yaml` is located.
I also added the `library` as it will not interfere with anything here.

Then you can start `R` in the top directory of the blog (again where `config.yaml` is located).

### Make a post

`new_post("test_post")`  will create an empty folder with an `index.Rmd`.  
Inside I can write as usual.  I decided to do some trivial R stuff.

However the building is different.  I decided only the `index.Rmd` requires building.
The command `build_bundles()` inside R does this.  But I'm thinking about changing this around, as I also like the idea to have `Makefile` bundles.  Either way, should you also use normal blogdown posts you may need to make sure it doesn't rebuild these bundles.

The rendered post is [here]({{< ref "/post/2019-08-18-test-blogdown/index.md" >}}).
