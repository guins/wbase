gulp = require 'gulp'
concat = require 'gulp-concat'
config = require('../config.coffee').scripts
# gutil = require 'gulp-util'
jsonPackage = require '../../package.json'
sourcemaps = require 'gulp-sourcemaps'
_ = require 'lodash'

libsArr = []

_.forEach jsonPackage["browserify-shim"], (value, link)->
	if value.match(/^global:/) # only if it's global (which means not included in app bundle)
		if _.has(jsonPackage.browser, link) # its an alias so get real link
			link = jsonPackage.browser["#{link}"]
		libsArr.push link

# gutil.log '[scripts] libsArr', libsArr

gulp.task 'scripts:libs',  ()->
	if libsArr and libsArr.length>0
		gulp.src(libsArr)
			.pipe(sourcemaps.init())
				.pipe(concat(config.libs.fileName))
			.pipe(sourcemaps.write("./"))
			.pipe(gulp.dest(config.libs.dest))

gulp.task 'scripts', ['scripts:libs']