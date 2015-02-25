gulp = require 'gulp'
config = require('../config.coffee').browserify
browserify = require 'gulp-browserify'
rename = require 'gulp-rename'

browserifyBundle = (bundleConfig)->
	gulp.src(bundleConfig.src, {read: false})
		.pipe(browserify(bundleConfig.options))
		.pipe(rename(bundleConfig.fileName))
		.pipe(gulp.dest(bundleConfig.dest))

gulp.task 'browserify', ()->
	config.bundles.forEach(browserifyBundle);
