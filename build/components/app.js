(function() {
  angular.module("about-me", []);

}).call(this);

(function() {
  angular.module('app', []);

}).call(this);

(function() {
  angular.module("main-panel", []);

}).call(this);

(function() {
  angular.module("navigation", []);

}).call(this);

(function() {
  angular.module("about-me").directive("aboutMe", function() {
    return {
      restrict: "E",
      replace: true,
      templateUrl: "about-me/about-me.html",
      scope: {}
    };
  });

}).call(this);

(function() {
  angular.module('app').config(function($stateProvider, $urlRouterProvider) {
    $stateProvider.state("home", {
      url: "/home",
      templateUrl: 'pages/main-panel.html'
    }).state("gallery", {
      url: "/galleries/:galleryId",
      templateUrl: 'main-panel/gallery.html',
      controller: 'ArtPieces'
    }).state("artPieceDetail", {
      url: "/galleries/:galleryId/:artPieceId",
      template: '<art-piece-detail></art-piece-detail>',
      controller: 'ArtPieceDetail'
    });
    return $urlRouterProvider.otherwise("/home");
  });

}).call(this);

(function() {
  angular.module('webapp', ['ngResource', 'ngAnimate', 'ui.router', 'webappTemplates', 'app', 'main-panel', 'about-me', 'navigation']);

}).call(this);

(function() {
  angular.module("main-panel").directive("mainPanel", function() {
    return {
      restrict: "E",
      replace: true,
      templateUrl: "main-panel/main-panel.html"
    };
  });

}).call(this);

(function() {
  angular.module("navigation").directive("navigationBar", function() {
    return {
      restrict: "E",
      replace: true,
      templateUrl: "navigation/navigation.html"
    };
  });

}).call(this);

(function() {
  window.getAngularService = function(name) {
    console.error("Only use this for testing purposes!");
    return angular.element(document).injector().get(name);
  };

}).call(this);

(function() {
  angular.module("about-me").directive("projects", function() {
    return {
      restrict: "E",
      replace: true,
      templateUrl: "about-me/projects/projects.html",
      scope: {},
      link: function(scope, element, attributes) {
        return scope.projects = [
          {
            name: "This Site",
            url: "http://www.jazeee.com",
            description: "Source code for this site (Angular, D3.js).",
            codeLink: "https://github.com/jazeee/jazeee.com"
          }, {
            name: "Simple Meteor Chat",
            url: "http://meteor-chat.jazeee.com",
            description: "Deployed on Heroku, so wait a few seconds to launch.",
            codeLink: "https://github.com/jazeee/meteor-chat"
          }, {
            name: "Meteor presentation for MadJS",
            url: "https://github.com/jazeee/meteor-presentation",
            description: "Presented at MadJS, Meteor Madison, Meteor Raleigh Durham meetups.",
            codeLink: "https://github.com/jazeee/meteor-presentation"
          }, {
            name: "Jazeee Meteor Spiderable",
            url: "https://github.com/jazeee/jazeee-meteor-spiderable",
            description: "Spiderable package for Meteor with caching and other support features.",
            codeLink: "https://github.com/jazeee/jazeee-meteor-spiderable"
          }, {
            name: "Arduino Tardis Motion Detector",
            url: "https://github.com/jazeee/ArduinoTardisMotionDetector",
            description: "Fun project. Arduino Motion Detector that plays a Tardis sample and manipulates the lights.",
            codeLink: "https://github.com/jazeee/ArduinoTardisMotionDetector"
          }, {
            name: "Raspberry PI Node Playground",
            url: "https://github.com/jazeee/raspberry-pi-node-playground",
            description: "This is some play around code for my Raspberry PI.",
            codeLink: "https://github.com/jazeee/raspberry-pi-node-playground"
          }, {
            name: "NodeSchool Solutions",
            url: "https://github.com/jazeee/learnyounode-code",
            description: "LearnYouNode",
            codeLink: "https://github.com/jazeee/learnyounode-code"
          }, {
            name: "NodeSchool Solutions",
            url: "https://github.com/jazeee/nodeschool-functional-coffeescript",
            description: "Functional CoffeeScript",
            codeLink: "https://github.com/jazeee/nodeschool-functional-coffeescript"
          }, {
            name: "NodeSchool Solutions",
            url: "https://github.com/jazeee/nodeschool-git-it",
            description: "Git-it",
            codeLink: "https://github.com/jazeee/nodeschool-git-it"
          }, {
            name: "NodeSchool Solutions",
            url: "https://github.com/jazeee/nodeschool-how-to-npm",
            description: "How To NPM",
            codeLink: "https://github.com/jazeee/nodeschool-how-to-npm"
          }, {
            name: "NodeSchool Solutions",
            url: "https://github.com/jazeee/nodeschool-scope-chains-closures",
            description: "Scope, Chains and Closures",
            codeLink: "https://github.com/jazeee/nodeschool-scope-chains-closures"
          }, {
            name: "NodeSchool Solutions",
            url: "https://github.com/jazeee/nodeschool-promise-it-wont-hurt",
            description: "Promise it Won't Hurt",
            codeLink: "https://github.com/jazeee/nodeschool-promise-it-wont-hurt"
          }
        ];
      }
    };
  });

}).call(this);

(function() {
  var a, b, colors, i, j, k, len, namedColors, ref,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  namedColors = ["Chocolate", "red", "darkgreen", "blue", "purple", "orange", "maroon", "CornflowerBlue", "coral", "aqua", "darkgoldenrod", "lightgreen"];

  colors = [];

  for (a = j = 0; j <= 5; a = ++j) {
    ref = [0, 1];
    for (k = 0, len = ref.length; k < len; k++) {
      b = ref[k];
      colors.push(namedColors[a * 2 + b]);
      i = a * 20;
      if (b === 1) {
        i = 120 + i;
      }
      colors.push("hsl(" + i + ", 85%, 30%)");
      colors.push("hsl(" + (i + 8) + ", 75%, 15%)");
      colors.push("hsl(" + (i + 15) + ", 95%, 45%)");
    }
  }

  angular.module("about-me").controller("Colors", function($scope) {
    return $scope.colors = colors;
  });

  angular.module("about-me").constant("SkillData", {
    "JavaScript": {
      type: "Language",
      experience: {
        2005: 0,
        2007: 10,
        2008: 15,
        2012: 30,
        2013: 60,
        2014: 85,
        2015: 90,
        2016: 90
      },
      domains: ["WebApp", "Server"],
      scoreWeight: 2
    },
    "ES2015": {
      type: "Language",
      experience: {
        2014: 0,
        2015: 30,
        2016: 40
      },
      domains: ["WebApp", "Server"],
      scoreWeight: 1.3
    },
    "CoffeeScript": {
      type: "Language",
      experience: {
        2012: 0,
        2013: 60,
        2014: 85,
        2015: 95,
        2016: 95
      },
      domains: ["WebApp", "Server"],
      scoreWeight: 3
    },
    "Meteor.js": {
      type: "Platform",
      experience: {
        2013: 0,
        2014: 40,
        2015: 70,
        2016: 85
      },
      domains: ["WebApp", "Server"],
      scoreWeight: 2
    },
    "Node.js": {
      type: "Platform",
      experience: {
        2011: 0,
        2012: 10,
        2013: 20,
        2014: 40,
        2015: 60,
        2016: 75
      },
      domains: ["WebApp", "Server"],
      scoreWeight: 2
    },
    "AngularJS 1.5": {
      type: "Platform",
      experience: {
        2012: 0,
        2013: 60,
        2014: 80,
        2015: 80,
        2016: 90
      },
      domains: ["WebApp"],
      scoreWeight: 2
    },
    "AngularJS 2.0": {
      type: "Platform",
      experience: {
        2014: 0,
        2015: 10,
        2016: 20
      },
      domains: ["WebApp"]
    },
    "Bootstrap": {
      type: "Platform",
      experience: {
        2012: 0,
        2013: 55,
        2014: 80,
        2015: 85,
        2016: 90
      },
      domains: ["WebApp"]
    },
    "D3.js": {
      type: "Platform",
      experience: {
        2012: 0,
        2013: 60,
        2014: 75,
        2015: 80,
        2016: 80
      },
      domains: ["WebApp"],
      scoreWeight: 2
    },
    "JQuery": {
      type: "Platform",
      experience: {
        2010: 0,
        2011: 20,
        2012: 30,
        2013: 40,
        2014: 50,
        2015: 70,
        2016: 70
      },
      domains: ["WebApp"]
    },
    "Jade/Pug/Less": {
      type: "Language",
      experience: {
        2012: 0,
        2013: 60,
        2014: 100,
        2015: 100,
        2016: 100
      },
      domains: ["WebApp"]
    },
    "HTML/CSS": {
      type: "Language",
      experience: {
        2005: 0,
        2006: 10,
        2008: 20,
        2010: 20,
        2012: 30,
        2013: 50,
        2014: 75,
        2015: 85,
        2016: 90
      },
      domains: ["WebApp"]
    },
    "Java": {
      type: "Language",
      experience: {
        2007: 0,
        2008: 10,
        2009: 30,
        2010: 60,
        2011: 75,
        2012: 85,
        2013: 90,
        2014: 85,
        2015: 85,
        2016: 85
      },
      domains: ["WebApp", "Server", "Android"]
    },
    "Spring": {
      type: "Platform",
      experience: {
        2009: 0,
        2010: 30,
        2012: 40,
        2013: 50,
        2014: 50,
        2015: 60,
        2016: 60
      },
      domains: ["Server"]
    },
    "Python": {
      type: "Language",
      experience: {
        2010: 0,
        2012: 15,
        2013: 25,
        2014: 40,
        2015: 50,
        2016: 50
      },
      domains: ["Server", "Source Control"]
    },
    "c++": {
      type: "Language",
      experience: {
        1995: 0,
        1996: 10,
        1998: 20,
        2000: 30,
        2001: 40,
        2002: 50,
        2004: 70,
        2005: 70,
        2006: 85,
        2010: 85,
        2012: 80,
        2014: 75,
        2015: 70,
        2016: 60
      },
      domains: ["Source Control"]
    },
    "STL": {
      type: "Platform",
      experience: {
        2002: 0,
        2003: 20,
        2004: 50,
        2005: 60,
        2006: 70,
        2008: 70,
        2010: 60,
        2012: 50,
        2014: 40,
        2015: 40,
        2016: 30
      },
      domains: ["Source Control"]
    },
    "VC++": {
      type: "Language",
      experience: {
        1995: 0,
        1996: 10,
        1998: 20,
        2000: 30,
        2001: 40,
        2002: 50,
        2004: 70,
        2005: 70,
        2006: 70,
        2008: 70,
        2010: 50,
        2011: 30,
        2013: 0
      },
      domains: ["Windows"]
    },
    "Mongo": {
      type: "Database",
      experience: {
        2012: 0,
        2013: 10,
        2014: 20,
        2015: 45,
        2016: 60
      },
      domains: ["Server"]
    },
    "Postgresql": {
      type: "Database",
      experience: {
        2010: 0,
        2011: 10,
        2013: 40,
        2014: 60,
        2015: 70,
        2016: 85
      },
      domains: ["Server"]
    },
    "MySQL": {
      type: "Database",
      experience: {
        2006: 0,
        2008: 10,
        2009: 30,
        2010: 60,
        2011: 50,
        2013: 50,
        2014: 50,
        2015: 50,
        2016: 40
      },
      domains: ["Server"]
    },
    "Linux": {
      type: "Environment",
      experience: {
        1999: 0,
        2000: 10,
        2001: 20,
        2002: 50,
        2004: 70,
        2005: 75,
        2006: 85,
        2008: 85,
        2010: 85,
        2012: 90,
        2014: 90,
        2015: 90,
        2016: 90
      },
      domains: ["Server", "Linux"]
    },
    "Windows": {
      type: "Environment",
      experience: {
        1992: 0,
        1995: 20,
        1997: 40,
        1998: 60,
        2000: 70,
        2001: 70,
        2002: 70,
        2004: 70,
        2005: 70,
        2006: 70,
        2008: 70,
        2010: 70,
        2012: 60,
        2014: 50,
        2015: 45,
        2016: 45
      },
      domains: ["Windows"]
    },
    "git/github/BitBucket": {
      type: "Source Control",
      experience: {
        2011: 0,
        2012: 10,
        2013: 20,
        2014: 30,
        2015: 60,
        2016: 80
      },
      domains: ["Process"]
    },
    "subversion (svn)": {
      type: "Source Control",
      experience: {
        2006: 0,
        2007: 10,
        2008: 30,
        2009: 50,
        2010: 60,
        2011: 70,
        2013: 75,
        2014: 75,
        2015: 80,
        2016: 70
      },
      domains: ["Process"]
    },
    "cvs": {
      type: "Source Control",
      experience: {
        2003: 0,
        2004: 10,
        2005: 20,
        2006: 30,
        2007: 30,
        2008: 0
      },
      domains: ["Process"]
    },
    "Visual Source Safe": {
      type: "Source Control",
      experience: {
        1997: 0,
        1998: 10,
        2000: 30,
        2002: 40,
        2004: 50,
        2005: 45,
        2006: 40,
        2007: 20,
        2008: 0
      },
      domains: ["Process"]
    },
    "Team Leadership": {
      type: "Project Management",
      experience: {
        2002: 0,
        2003: 15,
        2004: 25,
        2005: 30,
        2006: 35,
        2007: 40,
        2008: 50,
        2009: 65,
        2010: 75,
        2011: 85,
        2012: 90,
        2013: 95,
        2014: 95,
        2015: 95,
        2016: 95
      },
      domains: ["Process"]
    },
    "Atlassian (Jira, Confluence)": {
      type: "Project Management",
      experience: {
        2007: 0,
        2008: 10,
        2009: 30,
        2010: 60,
        2011: 70,
        2012: 75,
        2013: 85,
        2014: 85,
        2015: 85,
        2016: 90
      },
      domains: ["Process"]
    },
    "Agile/Kanban": {
      type: "Project Management",
      experience: {
        2008: 0,
        2009: 10,
        2010: 35,
        2011: 60,
        2012: 75,
        2013: 85,
        2014: 90,
        2015: 90,
        2016: 90
      },
      domains: ["Process"]
    },
    "Bugzilla": {
      type: "Project Management",
      experience: {
        2001: 0,
        2002: 10,
        2003: 20,
        2004: 50,
        2005: 70,
        2006: 70,
        2008: 75,
        2009: 60,
        2014: 50,
        2015: 25,
        2016: 0
      },
      domains: ["Process"]
    }
  });

  angular.module("about-me").service("Skills", function(SkillData) {
    var Skills;
    Skills = (function() {
      function Skills() {
        this.getDomainSkills = bind(this.getDomainSkills, this);
        this.getSkillScore = bind(this.getSkillScore, this);
        this.getSkillYearScore = bind(this.getSkillYearScore, this);
        this.getSkillData = bind(this.getSkillData, this);
        var index, l, latestYear, len1, name, ref1, skill, skillName;
        this.data = [];
        latestYear = 2005;
        for (name in SkillData) {
          skill = SkillData[name];
          this.data.push(_.extend({}, {
            name: name
          }, skill));
          latestYear = _(_.keys(skill.experience)).chain().map(function(year) {
            return +year;
          }).reduce(function(memo, year) {
            return Math.max(memo, year);
          }, latestYear).value();
          skill.score = this.getSkillScore(skill);
        }
        this.latestYear = latestYear;
        this.skillTypes = _.pluck(_.values(SkillData), "type");
        this.skillTypes = _.union(["Language", "Platform", "Database", "Environment", "Source Control", "Project Management"], this.skillTypes);
        this.skillTypes = _.unique(this.skillTypes);
        this.skillDomains = _.pluck(_.values(SkillData), "domains");
        this.skillDomains = _.unique(_.flatten(this.skillDomains));
        this.skillNames = _.keys(SkillData).sort();
        this.skillIndex = {};
        this.skillColors = {};
        ref1 = this.skillNames;
        for (index = l = 0, len1 = ref1.length; l < len1; index = ++l) {
          skillName = ref1[index];
          this.skillColors[skillName] = colors[index % colors.length];
          this.skillIndex[skillName] = index;
        }
      }

      Skills.prototype.getSkillData = function(skillType) {
        var skillData;
        skillData = angular.copy(SkillData);
        if (skillType != null) {
          skillData = _.pick(skillData, function(skill) {
            return skill.type === skillType;
          });
        }
        return skillData;
      };

      Skills.prototype.getSkillNames = function(skillType) {
        var skillNames;
        skillNames = _.keys(this.getSkillData(skillType));
        skillNames = _.sortBy(skillNames, (function(_this) {
          return function(skillName) {
            var skill;
            skill = _.find(_this.data, function(datum) {
              return datum.name === skillName;
            });
            return _this.getSkillScore(skill);
          };
        })(this));
        return skillNames.reverse();
      };

      Skills.prototype.getSkillYearScore = function(year, skillLevel, scoreWeight) {
        if (scoreWeight == null) {
          scoreWeight = 1;
        }
        return Math.max(0.5, year - (this.latestYear - 6)) * skillLevel * scoreWeight;
      };

      Skills.prototype.getSkillScore = function(skill) {
        var ref1, score, skillLevel, year;
        score = 0;
        ref1 = skill.experience;
        for (year in ref1) {
          skillLevel = ref1[year];
          score += this.getSkillYearScore(year, skillLevel, skill.scoreWeight);
        }
        return score;
      };

      Skills.prototype.getDomainSkills = function(skillDomain) {
        var skills;
        skills = _.filter(this.data, function(skill) {
          return _.contains(skill.domains, skillDomain);
        });
        skills = _.sortBy(skills, this.getSkillScore);
        return skills.reverse();
      };

      Skills.prototype.getSkills = function(skillType) {
        var index, ref1, skill, skillLevel, skillName, skills, type, year;
        skills = [];
        index = 0;
        for (skillName in SkillData) {
          skill = SkillData[skillName];
          type = skill.type;
          if ((skillType == null) || skillType === type) {
            ref1 = skill.experience;
            for (year in ref1) {
              skillLevel = ref1[year];
              skills.push({
                skillName: skillName,
                year: year,
                skillLevel: skillLevel,
                type: type,
                index: index
              });
              index++;
            }
          }
        }
        return skills;
      };

      return Skills;

    })();
    return new Skills();
  });

  angular.module("about-me").controller("SkillsController", function($scope, Skills) {
    var l, len1, ref1, results, skillDomain;
    $scope.domainSkillNames = {};
    ref1 = Skills.skillDomains;
    results = [];
    for (l = 0, len1 = ref1.length; l < len1; l++) {
      skillDomain = ref1[l];
      results.push($scope.domainSkillNames[skillDomain] = _.pluck(Skills.getDomainSkills(skillDomain), "name"));
    }
    return results;
  });

  angular.module("about-me").directive("skillSet", function(Skills) {
    var pieChartSelector, seriesChartSelector, skillsCrossFilter, typeDimension;
    skillsCrossFilter = {};
    typeDimension = {};
    pieChartSelector = '#skills-pie-chart';
    seriesChartSelector = '#skills-series-chart';
    return {
      restrict: "E",
      replace: true,
      templateUrl: "about-me/skills/skills.html",
      scope: {},
      compile: function(element, attributes) {
        var colorScale, latestYear, resizeCharts, skills, skillsGroup, skillsNameDimension, skillsNameGroup, skillsPieChart, skillsSeriesChart, skillsYearDimension, yearExtent;
        skills = Skills.getSkills();
        yearExtent = d3.extent(skills, function(skill) {
          return skill.year;
        });
        yearExtent[0] = Math.max(2005, yearExtent[0]);
        latestYear = yearExtent[1];
        skillsCrossFilter = crossfilter(skills);
        typeDimension = skillsCrossFilter.dimension(function(skill) {
          return skill.type;
        });
        typeDimension.filter("Language");
        skillsNameDimension = skillsCrossFilter.dimension(function(skill) {
          return skill.skillName;
        });
        skillsNameGroup = skillsNameDimension.group().reduceSum(function(skill) {
          return Skills.getSkillYearScore(skill.year, skill.skillLevel, skill.scoreWeight);
        });
        skillsYearDimension = skillsCrossFilter.dimension(function(skill) {
          return [skill.skillName, skill.year];
        });
        skillsGroup = skillsYearDimension.group().reduceSum(function(skill) {
          return skill.skillLevel;
        });
        colorScale = d3.scale.ordinal().domain(Skills.skillNames).range(colors);
        skillsPieChart = dc.pieChart(pieChartSelector);
        skillsPieChart.width($(pieChartSelector).width()).height($(pieChartSelector).height()).dimension(skillsNameDimension).group(skillsNameGroup).transitionDuration(500).colors(function(skill) {
          return colorScale(skill);
        }).title(function(skill) {
          return skill.key;
        });
        skillsSeriesChart = dc.seriesChart(seriesChartSelector).width($(seriesChartSelector).width()).height($(seriesChartSelector).height()).chart(function(chart) {
          return dc.lineChart(chart).interpolate('basis');
        }).x(d3.scale.linear().domain(yearExtent)).y(d3.scale.linear().domain([0, 100])).brushOn(false).elasticY(false).clipPadding(10).yAxisLabel("Relative Skill Level").dimension(skillsYearDimension).group(skillsGroup).seriesAccessor(function(skill) {
          return skill.key[0];
        }).keyAccessor(function(skill) {
          return skill.key[1];
        }).valueAccessor(function(skill) {
          return skill.value;
        }).colors(function(skill, i) {
          return colorScale(skill);
        }).renderTitle(true).title(function(skill) {
          return skill.key[0];
        }).renderHorizontalGridLines(true);
        skillsSeriesChart.xAxis().tickFormat(function(year) {
          return d3.format('d')(year);
        });
        resizeCharts = function() {
          skillsPieChart.width($(pieChartSelector).width()).height($(pieChartSelector).height());
          skillsSeriesChart.width($(seriesChartSelector).width()).height($(seriesChartSelector).height());
          return dc.renderAll();
        };
        resizeCharts();
        $(window).resize(_.debounce(resizeCharts, 250));
        return function(scope, element, attributes) {
          var updateActiveSkillsAndLevels;
          scope.activeSkillType = "Language";
          typeDimension.filter(scope.activeSkillType);
          scope.skillTypes = Skills.skillTypes;
          updateActiveSkillsAndLevels = function() {
            var l, len1, ref1, results, skillName;
            scope.activeSkillNames = Skills.getSkillNames(scope.activeSkillType);
            scope.skillFontColor = {};
            ref1 = scope.activeSkillNames;
            results = [];
            for (l = 0, len1 = ref1.length; l < len1; l++) {
              skillName = ref1[l];
              results.push(scope.skillFontColor[skillName] = Skills.skillColors[skillName]);
            }
            return results;
          };
          updateActiveSkillsAndLevels();
          return scope.setActiveSkillType = function(skillType) {
            scope.activeSkillType = skillType;
            updateActiveSkillsAndLevels();
            dc.filterAll();
            typeDimension.filter(skillType);
            return dc.renderAll();
          };
        };
      }
    };
  });

}).call(this);
