angular.module("about-me").directive("aboutMe"
()->
	return {
		restrict: "E"
		replace: true
		templateUrl: "about-me/about-me.html"
		scope: {}
	}
)