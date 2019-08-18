# in .Rprofile of the website project
if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

options(
  blogdown.author = "Clemens Ager",
  blogdown.ext = ".Rmd",
  blogdown.subdir = "post",
  blogdown.new_bundle = TRUE,
  blogdown.title_case = TRUE
)

source("R/render.R")
source("R/build_dir.R")
