try
	fs = require('fs')
	path = require('path')
	ecstatic = require('ecstatic')
	http = require('http')
	removeRecursively = require('rimraf')
	gulp = require('gulp')
	glob = require('glob')
	commandLineArguments = require('yargs').argv
	gulpFilter = require('gulp-filter')
	gulpif = require('gulp-if')
	{
		util
		rename
		print
		plumber
		coffee
		template
		less
		jade
		uglify
		concat
		angularTemplatecache
		embedlr
		livereload
		wait
	} = require('gulp-load-plugins')()
catch error
	console.error error
	process.exit(1)

paths = 
	gulpconfig : ["./gulpfile.coffee", "./package.json"]
	pages: "webapp/pages/**/*.jade"
	componentPages: "webapp/components/**/*.jade"
	componentsLess: [
		"webapp/components/**/app.less"
		"webapp/components/**/*.less"
	]
	coffee: [
		"webapp/components/**/_module.coffee"
		"webapp/components/**/*.coffee"
	]
	
	dest: "website"
	destPages: "website"
	destTemplates: "website/templates"
	destCoffee: "website/components"
	destLess: "website/css"
	
getPath = (pathId) ->
	paths[pathId] ? throw Error("\nUnknown path ID `#{pathId}`")

{log} = util
{red, green} = util.colors
task = gulp.task.bind(gulp)

src = (pathId) ->
	gulp.src(getPath(pathId))

dest = (pathId) ->
	gulp.dest(getPath(pathId))

watch = (pathId, tasks) ->
	gulp.watch(getPath(pathId), tasks)

logErrors = (stream) ->
	stream.on( 'error', (error) ->
		log( red("Error: #{error.message}"))
	)

compileCoffee = ->
	logErrors(coffee(sourceMap: false)).on('error', util.log)

compileJade = ->
	logErrors(jade({pretty: true}))
	

compileLess = ->
	logErrors(less())

reload = ->
	gulpif( true, )

task "html-pages", ->
	src('pages')
		.pipe(plumber())
		.pipe(compileJade())
		.pipe(rename(extname: '.html'))
		.pipe(embedlr())
		.pipe(dest('destPages'))
		.pipe(livereload({auto: false}))
		
task "html-components", ->
	src('componentPages')
		.pipe(plumber())
		.pipe(compileJade())
		.pipe(rename(extname: '.html'))
		.pipe(angularTemplatecache(standalone:true, module: 'webappTemplates'))
		.pipe(dest('destTemplates'))
		.pipe(livereload({auto: false}))

task "coffee", ->
	src('coffee')
		.pipe(plumber())
		.pipe(compileCoffee())
		.pipe(concat('app.js'))
		.pipe(dest('destCoffee'))
		.pipe(livereload({auto: false}))

task "less", ->
	src('componentsLess')
		.pipe(plumber())
		.pipe(concat('app.less'))
		.pipe(compileLess())
		.pipe(concat('app.css'))
		.pipe(dest('destLess'))
		.pipe(livereload({auto: false}))
		
task "start-web-server", ->
	webServerConfig = ecstatic(
		root: path.join(__dirname, getPath('dest'))
		cache: 1
	)
	http.createServer(webServerConfig).listen(9000)

task 'watch', ->
	gulp.watch(getPath('pages'), ["html-pages"])
	gulp.watch(getPath('componentPages'), ["html-components"])
	gulp.watch(getPath('coffee'), ["coffee"])
	gulp.watch(getPath('componentsLess'), ["less"])

task "start-livereload-server", ->
	livereload.listen()

task 'development', ->
	gulp.start(
		"start-web-server"
		"start-livereload-server"
		'html-pages'
		'html-components'
		'coffee'
		'less'
		'watch'
	)

task "default", ['development']