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

For now this will create a skeleton directoru under `content/post/mytitle/`.
This content will contain a file `index.md` which will be overwritten.
The interesting file is `source.md` - it will get special treatment as it is ignored in the settings. 
Without this ignoring it would show up twice.

It is a hugo specific that it will only fill out templates with extension `.md`.
I put in a modeline for vim to set the filetype to `rnoweb`.


<!--more-->

### Writing

Write your post by modifying the new `source.md`.
In the metadata there is draft set to true - delete or set it to false to have the post also in the output.

If your editor creates the page for you remove all generated html before publishing.

Once the code is ready input
``` 
make all_rnw
```

in the root directory of the blog.
This not only renders all unrendered r-bundles under posts, but also rewrites the local links to shortcodes so hugo correctly links them.


If you just want to render an individual post you can alternatively type:
```
make content/post/mytitle/index.md
```

Should `hugo server` be running this is the moment the preview will update.


### full site

After this the site can be built.
The command 
```
make page
```
assures all `source.md` have been rendered and then runs hugo.


