---
# vim: set ft=rmd : 
title: "{{ humanize .Name  | title }}"
date: {{ .Date }}
weight: 1
tags:
  - r
link-citations: yes
draft: true
---

Example post

```{r}
devtools::load_all()
```

<!--more-->

