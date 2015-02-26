gulp = require 'gulp'
source = require 'vinyl-source-stream'
browserify = require 'browserify'
config = require('../config.coffee').browserify
# gutil = require 'gulp-util'

browserifyThis = (bundleConfig)->
	# gutil.log '[browserify] bundleConfig', bundleConfig
	browserify(bundleConfig.src)
		.bundle()
		.pipe(source(bundleConfig.fileName))
		.pipe(gulp.dest(bundleConfig.dest))


gulp.task 'browserify', ()->
	for i in [0...config.bundles.length]
		browserifyThis(config.bundles[i])