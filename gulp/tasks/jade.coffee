path = require 'path'
gulp = require 'gulp'
data = require 'gulp-data'
jade = require 'gulp-jade'
config = require('../config.coffee').jade
_ = require 'lodash'
# gutil = require 'gulp-util'

jadeDefaults =
	pretty: true

jadeOptions = _.defaults config.options, jadeDefaults

# gutil.log '[jade] jadeOptions', jadeOptions

gulp.task 'jade', ()->
	gulp.src(config.src)
		.pipe(data((file)->
			return require(config.dataRelativePath + path.basename(file.path, '.jade') + '.json')
		))
		.pipe(jade(jadeOptions))
		.pipe(gulp.dest(config.dest))
