gulp = require 'gulp'
config = require './config.json'

gulp.task 'watch', [], ()->
	gulp.watch config.jade.src, ['templates']