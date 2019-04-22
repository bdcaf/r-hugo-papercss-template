---
title: "Initial Setup"
date: 2019-04-22T11:22:16+02:00
weight: 100
tags:
  - configuration
---

## clone
The master branch contains also the github page published here.
You can make an empty start by cloning the `plain branch`:

```
git clone --single-branch --branch plain https://github.com/bdcaf/r-hugo-papercss-template.git
```

## local setup
Many actions are run as [make](https://www.gnu.org/software/make/) actions.

You can do to all actions doing

```
make setup
```

### alternative
#### paper css
You will also need to initialise the [hugo-papercss theme](https://papercss-hugo-theme.netlify.com).

```
git submodule update --init --remote
```

This command can also be used to update the theme later on.

## render examples

You can render some examples to see if your R installation is correctly setup.

``` 
make pages
```

## local server

If all worked out without error you can then run `hugo server`
and go to the printed location in your browser to see your site in action.
