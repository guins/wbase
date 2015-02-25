path = require 'path'
gulp = require 'gulp'
data = require 'gulp-data'
jade = require 'gulp-jade'
jadeConfig = require('./config.json').jade

gulp.task 'templates', ()->
	gulp.src(jadeConfig.src)
		.pipe(data((file)->
			return require(jadeConfig.dataRelativePath + path.basename(file.path, '.jade') + '.json')
		))
		.pipe(jade({
			pretty: true
		}))
		.pipe(gulp.dest(jadeConfig.dest))
