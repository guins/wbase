gulp = require 'gulp'

require './tasks/templates.coffee'
require './tasks/styles.coffee'
require './tasks/watch.coffee'

gulp.task 'default', ()->
	# default task