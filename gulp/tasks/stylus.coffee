gulp = require 'gulp'
stylus = require 'gulp-stylus'
config = require('../config.coffee').stylus
autoprefixer = require 'autoprefixer-stylus'
rename = require 'gulp-rename'

gulp.task 'stylus-dev', ()->
	gulp.src( config.src )
		.pipe(stylus({
			linenos: true
			use: [
				autoprefixer({ browsers: ['last 2 version'] })
			]
		}))
		.pipe(gulp.dest( config.dest ))

gulp.task 'stylus-min', ()->
	gulp.src( config.src )
		.pipe(stylus({
			compress: true
			use: [
				autoprefixer({ browsers: ['last 2 version'] })
			]
		}))
		.pipe(rename({suffix: '.min'}))
		.pipe(gulp.dest( config.dest ))

gulp.task 'stylus', ['stylus-dev', 'stylus-min']