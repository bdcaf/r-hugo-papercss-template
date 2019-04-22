This is a template to create xkcd like blog where posts are created with knitr.

An example is hosted at: [r-hugo-papercss-template/](https://bdcaf.github.io/r-hugo-papercss-template/)

**Note** the master branch contains also the changes for the github page as well as archetypes for the guides.
For a clean start you might use the `plain` branch.

I'm currently not certain how to finally package this.
Many things point toward publishing as hugo theme. 
However all the R based workflow requires a Makefile to build the site and as hugo does not allow running external commands it seems to better fit publishing as Makefile oriented workflow that will also run hugo.
