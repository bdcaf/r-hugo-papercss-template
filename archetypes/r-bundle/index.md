---
title: "{{ humanize .Name  | title }}"
date: {{ .Date }}
weight: 1
tags:
  - r
link-citations: yes
---

<<<<<<< HEAD
Example post

```{r}
devtools::load_all()
```

<!--more-->

The source for this page is at
{{< bundle-file name="index.rmd" caption="index.rmd" >}}.
=======
This is an empty post. 
It will be replaced by the output of `source.md`
>>>>>>> 0ccf001... Use source.md for page source.
