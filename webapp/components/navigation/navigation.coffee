angular.module("navigation").directive("navigationBar"
->
	return {
		restrict: "E"
		replace: true
		templateUrl: "navigation/navigation.html"
	}
)