angular.module("about-me").constant("SkillsData"
	"Java": 
		type: "Language"
		experience:
			2007: 0
			2008: 10
			2009: 30
			2010: 60
			2012: 85
			2013: 90
			2014: 85
	"c++":
		type: "Language"
		experience:
			1995: 0
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
	"VC++":
		type: "Language"
		experience: 
			1995: 0
			1996: 10
			1998: 20
			2000: 30
			2001: 40
			2002: 50
			2004: 70
			2006: 70
			2008: 70
			2010: 50
			2011: 30
			2013: 0
	"EcmaScript/JavaScript":
		type: "Language"
		experience: 
			2005: 0
			2007: 10
			2008: 15
			2012: 30
			2013: 60
			2014: 85
	"CoffeeScript":
		type: "Language"
		experience:
			2012: 0
			2013: 60
			2014: 85
	"AngularJS":
		type: "Library"
		experience: 
			2012: 0
			2013: 60
			2014: 85
	"D3.js":
		type: "Library"
		experience: 
			2012: 0
			2013: 60
			2014: 75
	"Jade/HTML5/Less/CSS":
		type: "Language"
		experience:
			2005: 0
			2006: 10
			2008: 20
			2010: 20
			2012: 30
			2013: 40
			2014: 60
	"REST/WebSockets":
		type: "Protocol"
		experience:
			2008: 0
			2009: 10
			2010: 20
			2012: 40
			2013: 60
			2014: 80
	"Node.js":
		type: "Environment"
		experience:
			2011: 0
			2012: 10
			2013: 20
			2014: 40
	"Meteor":
		type: "Environment"
		experience:
			2013: 0
			2014: 40
	"Mongo": 
		type: "Database"
		experience:
			2012: 0
			2013: 10
			2014: 20
	"MySQL":
		type: "Database"
		experience:
			2006: 0
			2008: 10
			2009: 30
			2010: 60
			2011: 50
			2013: 50
			2014: 50
	"Postgresql":
		type: "Database"
		experience:
			2010: 0
			2011: 10
			2013: 40
			2014: 60
	"Linux":
		type: "Environment"
		experience:
			1999: 0
			2000: 10
			2001: 20
			2002: 50
			2004: 70
			2006: 85
			2008: 85
			2010: 85
			2012: 90
			2014: 90
	"Python":
		type: "Language"
		experience:
			2010: 0
			2012: 15
			2013: 25
			2014: 40
	"Bugzilla":
		type: "Utility"
		experience:
			2001: 0
			2002: 10
			2003: 20
			2004: 50
			2005: 70
			2006: 70
			2008: 75
			2009: 60
			2014: 50
	"Atlassian Suite (Jira, etc)":
		type: "Utility"
		experience:
			2007: 0
			2008: 10
			2009: 30
			2010: 60
			2011: 70
			2012: 75
			2013: 85
			2014: 85
	"Visual Source Safe":
		type: "Utility"
		experience:
			1997: 0
			1998: 10
			2000: 30
			2002: 40
			2004: 50
			2006: 40
			2007: 20
			2008: 0
	"cvs":
		type: "Utility"
		experience:
			2003: 0
			2004: 10
			2006: 30
			2007: 30
			2008: 0
	"subversion (svn)":
		type: "Utility"
		experience:
			2006: 0
			2007: 10
			2008: 30
			2009: 50
			2010: 60
			2011: 70
			2013: 75
			2014: 75
	"git/github":
		type: "Utility"
		experience:
			2011: 0
			2012: 10
			2013: 20
			2014: 30
	"Agile/Kanban":
		type: "Utility"
		experience:
			2008: 0
			2009: 10
			2010: 35
			2011: 60
			2012: 75
			2013: 85
			2014: 90
)

angular.module("about-me").service("Skills"
(SkillsData) ->
	class Skills
		constructor: ->
		
		getSkillsData: (skillType) ->
			if skillType?
				return _.pick(SkillsData, (skill)->
					skill.type == skillType
				)
			else
				return SkillsData
		
		getSkillNames: (skillType)->
			_.keys(@getSkillsData(skillType))
			
		getSkills: (skillType) ->
			skills = []
			for skillName, skill of SkillsData
				{type} = skill
				if !skillType? || skillType == type
					for year, skillLevel of skill.experience
						skills.push({
							skillName
							year
							skillLevel
							type
						})
			skills
	return new Skills()
)

angular.module("about-me").directive("aboutMe"
(Skills)->
	return {
		restrict: "E"
		replace: true
		templateUrl: "about-me/about-me.html"
		compile: (element, attributes) ->
			experiences = Skills.getSkills("Language")
			skillsCrossFilter = crossfilter(experiences)
			skillsNameDimension = skillsCrossFilter.dimension( (experience) ->
				experience.skillName
			)
			skillsNameGroup = skillsNameDimension.group()
			skillsNameGroupSum = skillsNameGroup.reduceSum( (experience) -> experience.skillLevel)
			skillsYearDimension = skillsCrossFilter.dimension((skill)->
				[skill.year, skill.skillName]
			)
			skillsGroup = skillsYearDimension.group().reduceSum((skill)->
				skill.skillLevel
			)
			
			skillsPieChart = dc.pieChart('#skills-pie-chart')
			skillsPieChart
				.width(400)
				.height(400)
				.dimension(skillsNameDimension)
				.group(skillsNameGroup)
				.transitionDuration(500)
			skillsSeriesChart = dc.seriesChart('#skills-series-chart')
				.width(700)
				.height(300)
				.chart( (chart) ->
					dc.lineChart(chart).interpolate('basis')
				).x(d3.scale.linear().domain([1996, 2015]))
				.brushOn(false)
				.elasticY(true)
				.clipPadding(10)
				.yAxisLabel("Relative Skill Level")
				.dimension(skillsYearDimension)
				.group(skillsGroup)
				.seriesAccessor((skill) ->
					skill.key[1]
				).keyAccessor( (skill)-> skill.key[0])
				.valueAccessor((skill)-> skill.value)
				.legend(
					dc.legend()
						.x(350)
						.y(350)
						.itemHeight(13)
						.gap(5)
						.horizontal(1)
						.legendWidth(140)
						.itemWidth(70)
				)
			skillsSeriesChart.xAxis().tickFormat(
				(year) ->
					d3.format('d')(year)
			)

			dc.renderAll()
	}
)