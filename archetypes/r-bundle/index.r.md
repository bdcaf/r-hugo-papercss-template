---
# vim: set ft=rnoweb : 
title: "{{ humanize .Name  | title }}"
date: {{ .Date }}
weight: 1
tags:
  - r
link-citations: yes
---

Example post

```{r}
devtools::load_all()
```

<!--more-->

The source for this page is at
{{< bundle-file name="index.rmd" caption="index.rmd" >}}.
