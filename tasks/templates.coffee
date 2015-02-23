path = require 'path'
gulp = require 'gulp'
data = require 'gulp-data'
jade = require 'gulp-jade'
jadeConfigs = require('./configs.json').jade

gulp.task 'templates', ()->
	gulp.src(jadeConfigs.src)
		.pipe(data((file)->
			return require(jadeConfigs.dataRelativePath + path.basename(file.path, '.jade') + '.json')
		))
		.pipe(jade({
			pretty: true
		}))
		.pipe(gulp.dest(jadeConfigs.dest))
