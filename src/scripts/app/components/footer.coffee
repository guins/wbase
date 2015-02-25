module.exports = (()->

	_log = (message)->
		console.log "[footer component]", message

	init = ->
		_log 'init'

	return {
		init: init
	}

)()