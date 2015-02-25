gulp = require 'gulp'
gutil = require 'gulp-util'
coffee = require 'gulp-coffee'
config = require('../config.coffee').coffee

gulp.task 'coffee', ()->
	gulp.src(config.src)
		.pipe(coffee(config.options).on('error', gutil.log))
		.pipe(gulp.dest(config.dest))