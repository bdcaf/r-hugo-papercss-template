#! /usr/local/bin/R
#
# hello_world.R
# Copyright (C) 2019 Clemens Ager <clemens.ager@uibk.ac.at>
#
# Distributed under terms of the MIT license.
#


hello <- function(name = "world"){
  sprintf("hello %s", name)
}
