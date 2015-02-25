module.exports = (()->

	_log = (message)->
		console.log "[header component]", message

	init = ->
		_log 'init'


	return {
		init: init
	}

)()