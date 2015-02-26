$ = require 'jquery'

module.exports = (()->

	_log = (message)->
		console.log "[header component]", message
		console.log 'body', $('body')

	init = ->
		_log 'init'


	return {
		init: init
	}

)()