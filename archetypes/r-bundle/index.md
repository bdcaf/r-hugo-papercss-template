---
title: "use devtools"
subtitle: "helpful functions"
author: "Clemens Ager"
date: 2019-04-22T10:34:13+02:00
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


```r
devtools::load_all()
```

```
## Loading devtools_post
```

```
## Invalid DESCRIPTION:
## Malformed package name
## 
## See section 'The DESCRIPTION file' in the 'Writing R Extensions'
## manual.
```

Now I can use the function:


```r
hello("you")
```

```
## [1] "hello you"
```



### usethis

Having the post setup with package structure [usethis](https://www.rdocumentation.org/packages/usethis/).


I like how this makes using packages easier.
Say I want to use [kableExtra](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html#getting_started)

So the first chunk is:


```r
library(knitr)
library(kableExtra)
dt <- mtcars[1:5, 1:6]
```

However `knitr` or `kableExtra` may not have been installed and could get an error.  
This can not only happen to strangers using your code but also when one switches machines.
So weeding through the `library` commands could take some work.
With `use_this` you can declare the required packages.


```r
usethis::use_package("knitr")
usethis::use_package("kableExtra")
```

Should you start on another machine one quickly could install all missing packages using the command:


```r
  devtools::install_deps()
```


Now assuming the libraries are all present.


```r
library(knitr)
library(kableExtra)
dt <- mtcars[1:5, 1:6]
```

and the command will work:

```r
kable(dt)
```

<table>
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:right;"> mpg </th>
   <th style="text-align:right;"> cyl </th>
   <th style="text-align:right;"> disp </th>
   <th style="text-align:right;"> hp </th>
   <th style="text-align:right;"> drat </th>
   <th style="text-align:right;"> wt </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Mazda RX4 </td>
   <td style="text-align:right;"> 21.0 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 160 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 3.90 </td>
   <td style="text-align:right;"> 2.620 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mazda RX4 Wag </td>
   <td style="text-align:right;"> 21.0 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 160 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 3.90 </td>
   <td style="text-align:right;"> 2.875 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Datsun 710 </td>
   <td style="text-align:right;"> 22.8 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 108 </td>
   <td style="text-align:right;"> 93 </td>
   <td style="text-align:right;"> 3.85 </td>
   <td style="text-align:right;"> 2.320 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hornet 4 Drive </td>
   <td style="text-align:right;"> 21.4 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 258 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 3.08 </td>
   <td style="text-align:right;"> 3.215 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hornet Sportabout </td>
   <td style="text-align:right;"> 18.7 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 360 </td>
   <td style="text-align:right;"> 175 </td>
   <td style="text-align:right;"> 3.15 </td>
   <td style="text-align:right;"> 3.440 </td>
  </tr>
</tbody>
</table>


The source for this page is 
{{< bundle-file name="index.rmd" caption="index.rmd" >}}





