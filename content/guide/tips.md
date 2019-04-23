---
title: "Tips"
date: 2019-04-23T10:38:34+02:00
weight: 100
tags:
  - configuration
---

1. I dislike the way hugo truncates posts automatically for summary.  
  Manually truncating by placing &lt;!--more--> assures the head is rendered nicely.  For short posts one can just put it at the and assure they are rendered fully.  

2. The makefile create a minified version of the rendered site.  
  I like this as the plain hugo rendered pages contain lots of extra spacing.  
  Having comments and other unused code removed is also nice.
  This apparently can break some hugo functions. 
  So if you find it causes trouble find following section in the Makefile and remove the `--minify`
  ```
  page: all_rnw
      rm -rf docs/*
      hugo --minify
  ```
  <!--more-->

