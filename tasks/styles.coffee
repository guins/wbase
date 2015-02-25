gulp = require 'gulp'
stylus = require 'gulp-stylus'
stylusConfig = require('./config.json').stylus
autoprefixer = require 'autoprefixer-stylus'
rename = require 'gulp-rename'

gulp.task 'stylus', ()->
	gulp.src( stylusConfig.src )
		.pipe(stylus({
			linenos: true
			use: [
				autoprefixer({ browsers: ['last 2 version'] })
			]
		}))
		.pipe(gulp.dest( stylusConfig.dest ))

gulp.task 'stylus-min', ()->
	gulp.src( stylusConfig.src )
		.pipe(stylus({
			compress: true
			use: [
				autoprefixer({ browsers: ['last 2 version'] })
			]
		}))
		.pipe(rename({suffix: '.min'}))
		.pipe(gulp.dest( stylusConfig.dest ))

gulp.task 'styles', ['stylus', 'stylus-min']