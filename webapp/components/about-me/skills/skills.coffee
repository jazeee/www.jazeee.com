namedColors = ["Chocolate", "red","darkgreen","blue","purple", "orange", "maroon",
		  "CornflowerBlue", "coral", "aqua", "darkgoldenrod", "lightgreen"
]

colors = []

for a in [0..5]
	for b in [0, 1]
		colors.push(namedColors[a*2 + b])
		i = a * 20
		if b == 1
			i = 120 + i
		colors.push("hsl(#{i}, 85%, 30%)")
		colors.push("hsl(#{i + 8}, 75%, 15%)")
		colors.push("hsl(#{i + 15}, 95%, 45%)")

angular.module("about-me").controller("Colors"
($scope)->
	$scope.colors = colors
)

angular.module("about-me").constant("SkillData"
	"Java": 
		type: "Language"
		experience:
			2007: 0
			2008: 10
			2009: 30
			2010: 60
			2011: 75
			2012: 85
			2013: 90
			2014: 85
			2015: 85
		domains: ["WebApp", "Server", "Android"]
	"Spring":
		type: "Library"
		experience:
			2009: 0
			2010: 30
			2012: 40
			2013: 50
			2014: 50
			2015: 60
		domains: ["Server"]
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
			2010: 85
			2012: 80
			2014: 75
			2015: 70
		domains: ["Utility"]
	"STL":
		type: "Library"
		experience:
			2002: 0
			2003: 20
			2004: 50
			2006: 70
			2008: 70
			2010: 60
			2012: 50
			2014: 40
			2015: 40
		domains: ["Utility"]
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
		domains: ["Windows"]
	"JavaScript":
		type: "Language"
		experience: 
			2005: 0
			2007: 10
			2008: 15
			2012: 30
			2013: 60
			2014: 85
			2015: 90
		domains: ["WebApp", "Server"]
	"CoffeeScript":
		type: "Language"
		experience:
			2012: 0
			2013: 60
			2014: 85
			2015: 95
		domains: ["WebApp", "Server"]
	"Jade/Less":
		type: "Language"
		experience:
			2012: 0
			2013: 60
			2014: 100
			2015: 100
		domains: ["WebApp"]
	"AngularJS":
		type: "Library"
		experience: 
			2012: 0
			2013: 60
			2014: 80
			2015: 80
		domains: ["WebApp"]
	"Bootstrap":
		type: "Library"
		experience: 
			2012: 0
			2013: 55
			2014: 80
			2015: 85
		domains: ["WebApp"]
	"D3.js":
		type: "Library"
		experience: 
			2012: 0
			2013: 60
			2014: 75
			2015: 80
		domains: ["WebApp"]
	"JQuery":
		type: "Library"
		experience: 
			2010: 0
			2011: 20
			2012: 30
			2013: 40
			2014: 50
			2015: 70
		domains: ["WebApp"]
	"HTML/CSS":
		type: "Language"
		experience:
			2005: 0
			2006: 10
			2008: 20
			2010: 20
			2012: 30
			2013: 50
			2014: 75
			2015: 85
		domains: ["WebApp"]
	"Node.js":
		type: "Library"
		experience:
			2011: 0
			2012: 10
			2013: 20
			2014: 40
			2015: 60
		domains: ["WebApp", "Server"]
	"Meteor.js":
		type: "Library"
		experience:
			2013: 0
			2014: 40
			2015: 70
		domains: ["WebApp", "Server"]
	"Mongo": 
		type: "Database"
		experience:
			2012: 0
			2013: 10
			2014: 20
			2015: 45
		domains: ["Server"]
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
			2015: 50
		domains: ["Server"]
	"Postgresql":
		type: "Database"
		experience:
			2010: 0
			2011: 10
			2013: 40
			2014: 60
			2015: 70
		domains: ["Server"]
	"Windows":
		type: "Environment"
		experience:
			1992: 0
			1995: 20
			1997: 40
			1998: 60
			2000: 70
			2001: 70
			2002: 70
			2004: 70
			2006: 70
			2008: 70
			2010: 70
			2012: 60
			2014: 50
			2015: 45
		domains: ["Windows"]
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
			2015: 90
		domains: ["Server", "Linux"]
	"Python":
		type: "Language"
		experience:
			2010: 0
			2012: 15
			2013: 25
			2014: 40
			2015: 50
		domains: ["Server", "Utility"]
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
			2015: 25
		domains: ["Process"]
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
			2015: 85
		domains: ["Process"]
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
		domains: ["Process"]
	"cvs":
		type: "Utility"
		experience:
			2003: 0
			2004: 10
			2006: 30
			2007: 30
			2008: 0
		domains: ["Process"]
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
			2015: 80
		domains: ["Process"]
	"git/github":
		type: "Utility"
		experience:
			2011: 0
			2012: 10
			2013: 20
			2014: 30
			2015: 60
		domains: ["Process"]
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
			2015: 90
		domains: ["Process"]
)

angular.module("about-me").service("Skills"
(SkillData) ->
	class Skills
		constructor: ->
			@data = []
			latestYear = 2000
			for name, skill of SkillData
				@data.push(_.extend({}, {name}, skill))
				latestYear = _(_.keys(skill.experience)).chain()
					.map((year) -> +year)
					.reduce((memo, year) ->
						Math.max(memo, year)
					latestYear)
					.value()
			@latestYear = latestYear
			@skillTypes = _.pluck(_.values(SkillData), "type")
			@skillTypes = _.union(["Language", "Library", "Environment", "Database", "Utility"], @skillTypes)
			@skillTypes = _.unique(@skillTypes)
			@skillDomains = _.pluck(_.values(SkillData), "domains")
			@skillDomains = _.unique(_.flatten(@skillDomains))
			@skillNames = _.keys(SkillData).sort()
			@skillIndex = {}
			@skillColors = {}
			for skillName, index in @skillNames
				@skillColors[skillName] = colors[index % colors.length]
				@skillIndex[skillName] = index

		getSkillData: (skillType) ->
			if skillType?
				return _.pick(SkillData, (skill)->
					skill.type == skillType
				)
			else
				return SkillData
		
		getSkillNames: (skillType)->
			_.keys(@getSkillData(skillType))
		
		getSkillYearScore: (year, skillLevel) =>
			return Math.max(0.5, (year - (@latestYear - 6))) * skillLevel
		
		getSkillScore: (skill) =>
			score = 0
			for year, skillLevel of skill.experience
				score += @getSkillYearScore(year, skillLevel)
			score
		
		getDomainSkills: (skillDomain) =>
			skills = _.filter(@data, (skill)->
				_.contains(skill.domains, skillDomain)
			)
			skills = _.sortBy(skills, @getSkillScore)
			skills.reverse()
			
		getSkills: (skillType) ->
			skills = []
			index = 0
			for skillName, skill of SkillData
				{type} = skill
				if !skillType? || skillType == type
					for year, skillLevel of skill.experience
						skills.push({
							skillName
							year
							skillLevel
							type
							index
						})
						index++
			skills
	return new Skills()
)

angular.module("about-me").controller("SkillsController"
($scope, Skills)->
	$scope.domainSkillNames = {}
	for skillDomain in Skills.skillDomains
		$scope.domainSkillNames[skillDomain] = _.pluck(Skills.getDomainSkills(skillDomain), "name")
)

angular.module("about-me").directive("skillSet"
(Skills)->
	skillsCrossFilter = {}
	typeDimension = {}
	pieChartSelector = '#skills-pie-chart'
	seriesChartSelector = '#skills-series-chart'
	return {
		restrict: "E"
		replace: true
		templateUrl: "about-me/skills/skills.html"
		scope: {}
		compile: (element, attributes) ->
			skills = Skills.getSkills()
			yearExtent = d3.extent(skills, (skill) -> skill.year)
			yearExtent[0] = Math.max(2000, yearExtent[0])
			latestYear = yearExtent[1]
			skillsCrossFilter = crossfilter(skills)
			typeDimension = skillsCrossFilter.dimension((skill)->skill.type)
			typeDimension.filter("Language")
			skillsNameDimension = skillsCrossFilter.dimension( (skill) ->
				skill.skillName
			)
			skillsNameGroup = skillsNameDimension.group().reduceSum((skill) ->
				Skills.getSkillYearScore(skill.year, skill.skillLevel)
			)
			skillsYearDimension = skillsCrossFilter.dimension((skill)->
				[skill.skillName, skill.year]
			)
			skillsGroup = skillsYearDimension.group().reduceSum((skill)->
				skill.skillLevel
			)
			
			colorScale = d3.scale.ordinal().domain(Skills.skillNames).range(colors)
			skillsPieChart = dc.pieChart(pieChartSelector)
			skillsPieChart
				.width($(pieChartSelector).width())
				.height($(pieChartSelector).height())
				.dimension(skillsNameDimension)
				.group(skillsNameGroup)
				.transitionDuration(500)
				.colors( (skill) ->
					colorScale(skill)
				)
				.title( (skill) ->
					skill.key
				)
			skillsSeriesChart = dc.seriesChart(seriesChartSelector)
				.width($(seriesChartSelector).width())
				.height($(seriesChartSelector).height())
				.chart( (chart) ->
					dc.lineChart(chart).interpolate('basis')
				)
				.x(d3.scale.linear().domain(yearExtent))
				.y(d3.scale.linear().domain([0,100]))
				.brushOn(false)
				.elasticY(false)
				.clipPadding(10)
				.yAxisLabel("Relative Skill Level")
				.dimension(skillsYearDimension)
				.group(skillsGroup)
				.seriesAccessor((skill) ->
					skill.key[0]
				)
				.keyAccessor( (skill)-> skill.key[1])
				.valueAccessor((skill)-> skill.value)
				.colors( (skill, i) ->
						colorScale(skill)
				)
				.renderTitle(true)
				.title((skill)->skill.key[0])
				.renderHorizontalGridLines(true)
			skillsSeriesChart.xAxis().tickFormat(
				(year) ->
					d3.format('d')(year)
			)
			
			resizeCharts = ->
				skillsPieChart
					.width($(pieChartSelector).width())
					.height($(pieChartSelector).height())
				skillsSeriesChart
					.width($(seriesChartSelector).width())
					.height($(seriesChartSelector).height())
				dc.renderAll()

			resizeCharts()
			$(window).resize( _.debounce(resizeCharts, 250))
			
			return (scope, element, attributes) ->
				scope.activeSkillType = "Language"
				typeDimension.filter(scope.activeSkillType)
				scope.skillTypes = Skills.skillTypes
				updateActiveSkillsAndLevels = ->
					scope.activeSkillNames = Skills.getSkillNames(scope.activeSkillType)
					scope.skillFontColor = {}
					for skillName in scope.activeSkillNames
						scope.skillFontColor[skillName] = Skills.skillColors[skillName]
				updateActiveSkillsAndLevels()
				
				scope.setActiveSkillType = (skillType) ->
					scope.activeSkillType = skillType
					updateActiveSkillsAndLevels()
					dc.filterAll()
					typeDimension.filter(skillType)
					dc.renderAll()
	}
)