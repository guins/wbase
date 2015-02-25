gulp = require 'gulp'
stylus = require 'gulp-stylus'
stylusConfig = require('./config.json').stylus

gulp.task 'styles', ()->
	gulp.src( stylusConfig.src )
		.pipe(stylus({
		  compress: false
		}))
		.pipe(gulp.dest( stylusConfig.dest ))