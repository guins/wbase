gulp = require 'gulp'
gutil = require 'gulp-util'
inject = require 'gulp-inject'
config = require('../config.coffee').inject
_ = require 'lodash'

gulp.task 'inject', ()->
	target = gulp.src( config.src )

	injectDefaults =
		relative: true

	_injectFiles = (src, type)->
		injectOptions = _.defaults {}, injectDefaults
		injectOptions.name = type if type != 'default'
		target = target.pipe( inject(gulp.src(src, {read:false}), injectOptions) )
		return true
	
	_.forEach config.css, (value, key)->
		_injectFiles(value.src, key)

	_.forEach config.js, (value, key)->
		_injectFiles(value.src, key)

	target.pipe( gulp.dest(config.dest) )