skills = {}

skills["Java"] =
	experience: [
		2008: 10
		2009: 30
		2010: 60
		2012: 85
		2013: 90
		2014: 85
	]

skills["c++"] =
	experience: [
		1996: 10
		1998: 20
		2000: 30
		2001: 40
		2002: 50
		2004: 70
		2006: 85
		2008: 85
		2010: 85
		2012: 80
		2014: 75
	]

skills["VC++"] =
	experience: [
		1996: 10
		1998: 20
		2000: 30
		2001: 40
		2002: 50
		2004: 70
		2006: 70
		2008: 70
		2010: 50
	]

skills["EcmaScript/JavaScript"] =
	experience: [
		2010: 10
		2012: 30
		2013: 60
		2014: 85
	]

skills["CoffeeScript"] =
	experience: [
		2010: 10
		2012: 30
		2013: 60
		2014: 85
	]

skills["AngularJS"] =
	experience: [
		2010: 10
		2012: 30
		2013: 60
		2014: 85
	]

skills["D3.js"] =
	experience: [
		2010: 10
		2012: 30
		2013: 60
		2014: 85
	]

skills["Jade/HTML5/Less/CSS"] =
	experience: [
		2010: 10
		2012: 30
		2013: 60
		2014: 80
	]

skills["REST/WebSockets"] =
	experience: [
		2010: 10
		2012: 30
		2013: 60
		2014: 80
	]

skills["Node.js"] =
	experience: [
		2013: 20
		2014: 40
	]

skills["Meteor"] =
	experience: [
		2014: 30
	]

skills["Mongo"] = 
	experience: [
		2014: 20
	]

skills["MySQL"] =
	experience: [
		2008: 10
		2009: 30
		2010: 50
		2011: 40
	]

skills["Postgresql"] =
	experience: [
		2012: 10
		2013: 40
		2014: 60
	]

skills["Linux"] =
	experience: [
		2000: 10
		2001: 20
		2002: 50
		2004: 70
		2006: 85
		2008: 85
		2010: 85
		2012: 90
		2014: 90
	]

skills["Python"] =
	experience: [
		2012: 15
		2013: 25
		2014: 40
	]

skills["Bugzilla"] =
	experience: [
		2002: 10
		2003: 20
		2004: 50
		2005: 70
		2006: 70
		2008: 75
		2009: 60
	]

skills["Atlassian Suite (Jira, etc)"] =
	experience: [
		2008: 10
		2009: 30
		2010: 60
		2011: 70
		2012: 75
		2013: 85
		2014: 85
	]

skills["Visual Source Safe"] =
	experience: [
		1998: 10
		2000: 30
		2002: 40
		2004: 50
		2006: 40
	]

skills["cvs"] =
	experience: [
		2004: 10
		2006: 30
		2007: 30
	]

skills["subversion (svn)"] =
	experience: [
		2007: 10
		2008: 30
		2009: 50
		2010: 60
		2011: 70
		2013: 75
		2014: 75
	]

skills["git/github"] =
	experience: [
		2012: 10
		2013: 20
		2014: 20
	]

skills["Agile/Kanban"] =
	experience: [
		2009: 10
		2010: 35
		2011: 60
		2012: 75
		2013: 85
		2014: 90
	]

angular.module("about-me").directive("aboutMe"
->
	return {
		restrict: "E"
		replace: true
		templateUrl: "about-me/about-me.html"
	}
)