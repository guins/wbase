gulp = require 'gulp'
stylus = require 'gulp-stylus'
config = require('../config.coffee').stylus
autoprefixer = require 'autoprefixer-stylus'
rename = require 'gulp-rename'
_ = require 'lodash'
# gutil = require 'gulp-util'

autoprefixerDefaults = 
	browsers: ['last 2 version']

autoprefixerOptions = _.defaults config.autoprefixer.options, autoprefixerDefaults

devDefaults =
	linenos: true
	use: [
		autoprefixer(autoprefixerOptions)
	]

devOptions = _.defaults config.dev.options, devDefaults

prodDefaults =
	compress: true
	use: [
		autoprefixer(autoprefixerOptions)
	]

prodOptions = _.defaults config.prod.options, prodDefaults

# gutil.log '[stylus] autoprefixerOptions', autoprefixerOptions
# gutil.log '[stylus] devOptions', devOptions
# gutil.log '[stylus] prodOptions', prodOptions

gulp.task 'stylus:dev', ()->
	gulp.src( config.src )
		.pipe( stylus(devOptions) )
		.pipe( gulp.dest( config.dest ) )

gulp.task 'stylus:prod', ()->
	gulp.src( config.src )
		.pipe( stylus( prodOptions ) )
		.pipe( rename({suffix: '.min'}) )
		.pipe( gulp.dest( config.dest ) )

gulp.task 'stylus', ['stylus:dev', 'stylus:prod']