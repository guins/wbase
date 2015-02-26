gulp = require 'gulp'
source = require 'vinyl-source-stream'
browserify = require 'browserify'
watchify = require 'watchify'
config = require('../config.coffee').browserify
_ = require 'lodash'
# gutil = require 'gulp-util'

browserifyTask = (callback, devMode)->

	_browserifyBundle = (bundleConfig, devMode)->
		# gutil.log '[browserify] bundleConfig', bundleConfig

		bundleOptions = bundleConfig.options
		bundler = browserify(bundleConfig.src, bundleOptions)

		if devMode
			_.extend bundleOptions, watchify.args, {debug: true}
			bundler = watchify(browserify(bundleConfig.src, bundleOptions))

		_bundle = ->
			bundler
				.bundle()
				.pipe(source(bundleConfig.fileName))
				.pipe(gulp.dest(bundleConfig.dest))

		if devMode
			bundler.on 'update', _bundle

		_bundle()

	for i in [0...config.bundles.length]
		_browserifyBundle(config.bundles[i], devMode)
		callback() if i == config.bundles.length-1

gulp.task 'browserify', browserifyTask

return module.exports = browserifyTask