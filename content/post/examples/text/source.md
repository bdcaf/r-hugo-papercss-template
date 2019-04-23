---
title: "text output"
subtitle: "A vignette."
author: "Clemens Ager"
date: "`r Sys.Date()`"
output: rmarkdown::html_vignette
link-citations: yes
tags: 
  - minimal
---

This is render from [007-text-output.Rmd](https://github.com/yihui/knitr-examples/blob/master/007-text-output.Rmd)

# Testing text output

See if chunk options like `tidy`, `prompt` and `echo`, etc work as expected.

<!--more-->

## A normal chunk

```{r demo}
1+1
for (i in 1:10) {
# nothing before 10
if(i>=10)print(i)
}
# two blank lines below


dnorm(0)
```

## Do not evaluate

```{r demo, eval=FALSE}
```

## Add prompts

```{r demo, prompt=TRUE}
```

## No evaluate or tidy

```{r demo, eval=FALSE, tidy=FALSE}
```

## Do not tidy

```{r demo, tidy=FALSE}
```

## Do not echo

```{r demo, echo=FALSE}
```

## Do not comment out results

```{r demo, comment=NA}
```

## Do not echo the 2nd expression

```{r demo, echo=-2}
```

## Do not evaluate, echo the 2nd expression

```{r demo, eval=FALSE, echo=2}
```

## Only evaluate the first two expressions

```{r demo, eval=1:2}
```

## Add prompts but no tidy

```{r demo, tidy=FALSE, prompt=TRUE}
```

## Prompts, no evaluate or tidy

```{r demo, eval=FALSE, tidy=FALSE, prompt=TRUE}
```

## Change prompts

```{r}
options(prompt='R> ', continue='+  ')
```

```{r demo, prompt=TRUE}
```

## Backslashes

```{r}
{
# can you deal with \code{foo} or \n, \a?
gsub('\\.', '\\\\', 'a.b.c') # \link{bar}
}
cat('a\tb\nc')
```

## Other formatR options

We can set **formatR** options globally:

```{r}
options(formatR.blank = FALSE)
```

```{r demo, eval=FALSE}
```

Or locally in one chunk via `tidy.opts`. Do not keep comments:

```{r demo, eval=FALSE, tidy.opts=list(comment=FALSE)}
```

Move left braces to the next line:

```{r demo, eval=2, echo=2, tidy.opts=list(brace.newline=TRUE)}
```

Indent by 2 spaces:

```{r demo, eval=FALSE, tidy.opts=list(indent=2)}
```

See <http://yihui.name/formatR> for details.

## Empty chunks

```{r}

```

## Messages

Do not include messages:

```{r message=FALSE}
1+1
message('helloooo!')
```

No warnings:

```{r test-w, warning=FALSE}
1:2+1:3
warning('no no no')
```

Select warnings using numeric indices:

```{r test-w, warning=-1}
```

Invalid indices will select nothing:

```{r test-w, warning=3}
```

## The results option

Do not show text results:

```{r demo, results='hide'}
```

Flush all results to the end of a chunk:

```{r demo, results='hold'}
```

Output as is:

```{r results='asis'}
cat('_Markdown_,', 'oh yeah, **Markdown**')
```
