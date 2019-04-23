---
title: "Create Post"
date: 2019-04-23T12:25:32+02:00
weight: 2
tags:
  - post
---

Create a post using 

```
hugo new --kind r-bundle post/mytitle
```

For now this will create a skeleton post under `content/post/mytitle/index.md`.

For now hugo will not render `.rmd` files.

**If you want the code to be run you need to adjust the extension to .rmd**
Of course you can create your own `index.rmd` from scratch as well.

<!--more-->

### Rendering

Once the code is ready input
``` 
make all_rnw
```
in the root directory of the blog
to render all `index.rmd` under posts.

Alternatively you can 
```
Rscript -e "knitr::knit('$(index.rmd)', output='$(index.md)')"
```

Should `hugo server` be running this is the moment the preview will update.


### full site

After this the site can be built.
The command 
```
make page
```
assures all rmds have been rendered and then runs hugo.

