gulp = require 'gulp'
stylus = require 'gulp-stylus'
stylusConfig = require('./config.json').stylus
autoprefixer = require 'autoprefixer-stylus'

gulp.task 'styles', ()->
	gulp.src( stylusConfig.src )
		.pipe(stylus({
		  compress: false
		  use: [
		  	autoprefixer({ browsers: ['last 2 version'] })
		  ]
		}))
		.pipe(gulp.dest( stylusConfig.dest ))