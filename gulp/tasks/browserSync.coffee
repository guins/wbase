gulp = require 'gulp'
browserSync = require 'browser-sync'
config = require('../config.coffee').browserSync

gulp.task 'browser-sync', ()->
	browserSync(config.options)