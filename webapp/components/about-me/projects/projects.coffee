angular.module("about-me").directive "projects",
->
	return {
		restrict: "E"
		replace: true
		templateUrl: "about-me/projects/projects.html"
		scope: {}
		link: (scope, element, attributes) ->
			scope.projects = [
				{
					name: "This Site"
					url: "http://www.jazeee.com"
					description: "Source code for this site (Angular, D3.js)."
					codeLink: "https://github.com/jazeee/jazeee.com"
				} , {
					name: "Simple Meteor Chat"
					url: "http://meteor-chat.jazeee.com"
					description: "Deployed on Heroku, so wait a few seconds to launch."
					codeLink: "https://github.com/jazeee/meteor-chat"
				} , {
					name: "Meteor presentation for MadJS"
					url: "https://github.com/jazeee/meteor-presentation"
					description: "Presented at MadJS, Meteor Madison, Meteor Raleigh Durham meetups."
					codeLink: "https://github.com/jazeee/meteor-presentation"
				} , {
					name: "Jazeee Meteor Spiderable"
					url: "https://github.com/jazeee/jazeee-meteor-spiderable"
					description: "Spiderable package for Meteor with caching and other support features."
					codeLink: "https://github.com/jazeee/jazeee-meteor-spiderable"
				} , {
					name: "Arduino Tardis Motion Detector"
					url: "https://github.com/jazeee/ArduinoTardisMotionDetector"
					description: "Fun project. Arduino Motion Detector that plays a Tardis sample and manipulates the lights."
					codeLink: "https://github.com/jazeee/ArduinoTardisMotionDetector"
				} , {
					name: "Raspberry PI Node Playground"
					url: "https://github.com/jazeee/raspberry-pi-node-playground"
					description: "This is some play around code for my Raspberry PI."
					codeLink: "https://github.com/jazeee/raspberry-pi-node-playground"
				} , {
					name: "NodeSchool Solutions"
					url: "https://github.com/jazeee/learnyounode-code"
					description: "LearnYouNode"
					codeLink: "https://github.com/jazeee/learnyounode-code"
				} , {
					name: "NodeSchool Solutions"
					url: "https://github.com/jazeee/nodeschool-functional-coffeescript"
					description: "Functional CoffeeScript"
					codeLink: "https://github.com/jazeee/nodeschool-functional-coffeescript"
				} , {
					name: "NodeSchool Solutions"
					url: "https://github.com/jazeee/nodeschool-git-it"
					description: "Git-it"
					codeLink: "https://github.com/jazeee/nodeschool-git-it"
				} , {
					name: "NodeSchool Solutions"
					url: "https://github.com/jazeee/nodeschool-how-to-npm"
					description: "How To NPM"
					codeLink: "https://github.com/jazeee/nodeschool-how-to-npm"
				} , {
					name: "NodeSchool Solutions"
					url: "https://github.com/jazeee/nodeschool-scope-chains-closures"
					description: "Scope, Chains and Closures"
					codeLink: "https://github.com/jazeee/nodeschool-scope-chains-closures"
				} , {
					name: "NodeSchool Solutions"
					url: "https://github.com/jazeee/nodeschool-promise-it-wont-hurt"
					description: "Promise it Won't Hurt"
					codeLink: "https://github.com/jazeee/nodeschool-promise-it-wont-hurt"
				}
			]
	}
