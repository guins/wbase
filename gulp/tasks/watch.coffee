gulp = require 'gulp'
config = require '../config.coffee'

gulp.task 'watch', [], ()->
	gulp.watch config[config.templateEngine].src, ['templates']
	gulp.watch config[config.cssProcessor].src, ['styles']