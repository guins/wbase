gulp = require 'gulp'
config = require '../config.coffee'

gulp.task 'styles', [config.cssProcessor]