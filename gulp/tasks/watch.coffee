gulp = require 'gulp'
config = require '../config.coffee'
browserSync = require 'browser-sync'

gulp.task 'watch', ['browser-sync'], ()->
	gulp.watch config[config.templateEngine].src, ['templates', 'inject']
	gulp.watch config[config.cssProcessor].src, ['styles']
	gulp.watch(config.browserSync.watch).on('change', browserSync.reload)