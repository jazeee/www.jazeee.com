window.getAngularService = (name) ->
	console.error("Only use this for testing purposes!")
	angular.element(document).injector().get(name)