path = require 'path'
gulp = require 'gulp'
data = require 'gulp-data'
jade = require 'gulp-jade'
config = require('../config.coffee').jade

gulp.task 'templates', ()->
	gulp.src(config.src)
		.pipe(data((file)->
			return require(config.dataRelativePath + path.basename(file.path, '.jade') + '.json')
		))
		.pipe(jade({
			pretty: true
		}))
		.pipe(gulp.dest(config.dest))
