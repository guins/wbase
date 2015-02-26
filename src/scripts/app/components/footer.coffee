module.exports = (()->

	_log = (message)->
		console.log "[footer component]", message

	init = ->
		_log 'init'
		_log 'init 2'

	return {
		init: init
	}

)()