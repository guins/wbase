gulp = require 'gulp'
# gutil = require 'gulp-util'
# coffee = require 'gulp-coffee'
config = require('../config.coffee').coffee
browserify = require 'gulp-browserify'
rename = require 'gulp-rename'

gulp.task 'coffee', ()->
	
	# gulp.src(config.src)
	# 	.pipe(coffee(config.options).on('error', gutil.log))
	# 	.pipe(gulp.dest(config.dest))
	
	gulp.src(config.src, {read: false})
		.pipe(browserify({
			transform: ['coffeeify']
			extensions: ['.coffee']
		}))
		.pipe(rename(config.bundleName))
		.pipe(gulp.dest(config.dest))