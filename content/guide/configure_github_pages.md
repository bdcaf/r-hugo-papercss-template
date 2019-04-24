---
title: "Configure Github Pages"
date: 2019-04-22T10:34:13+02:00
weight: 10
tags: 
  - github pages
  - configuration
---

To setup [github-pages](https://pages.github.com) do one of the following:

<!--more-->

#### publish from gh-pages branch

This is my preferred variant as it keeps the master branch clean.

##### setup branch
First step is to create an empty branch `gh-repo`.  This is best done immediatly when creating the repo.
This involves some modifying in the directory so have all important files from there somewhere backed up.

```
git checkout --orphan gh-pages
```
I had to do  manual cleaning.
```
git rm -rf .
git add .
git commit -am "empty"
```

and publish to github:

```
git push --set-upstream origin gh-pages
```

Either way then you can switch back to `master`.

```
git checkout master
```
 and add a worktree tracking `gh-pages`.

```
git worktree gh-pages
```

If the stars stand in your favour `make page` will write the files into the `gh-pages` subdirectory.

Then `make publish` will push the changes.

Github configuration is back here as the option to use gh-pages is only available *after* the branch has been created.

 - on the settings page scroll down to the github pages section
 - under source select "gh-pages branch"
 - no need to select a theme or a custom theme

#### publish from docs folder

github configuration:

 - on the settings page scroll down to the github pages section
 - under source select "master branch/docs folder"
 - no need to select a theme or a custom theme

for building into docs you need to configure `config.yaml` to contain:

```
publishDir: gh-pages
```

The publish command is currently removed.  In the `Makefile` you need to adjust the `publish` section to look like this:

```
publish: page
	git add docs/
	git commit -am "published"
	git push
```

This will commit everything in the docs folder with the message published.


#### Notes:
- currently github pages does not support publishing git lfs files.   
  The simplest workaround is to not use git lfs for referenced files.
  Should you accidentally have it turned on you can remove the files, use `git lfs untrack ~bad files~` and readd them.

- I chose a single message for publish so it would be easy to filter out.
