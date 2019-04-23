---
title: "Configure Github Pages"
date: 2019-04-22T10:34:13+02:00
weight: 10
tags: 
  - github pages
  - configuration
---

To setup [github-pages](https://pages.github.com) do the following:
 
 - on the settings page scroll down to the github pages section
 - under source select "master branch/docs folder"
 - no need to select a theme or a custom theme

Once everything is setup the page can be published 
doing `make publish`. 
This will commit everything in the docs folder with the message published.

<!--more-->

#### Notes:
- currently github pages does not support publishing git lfs files.   
  The simplest workaround is to not use git lfs for referenced files.
  Should you accidentally have it turned on you can remove the files, use `git lfs untrack ~bad files~` and readd them.

- I chose a single message for publish so it would be easy to filter out.
