srcPath = "./src"
destPath = "./build"

module.exports = {
	templateEngine: "jade"
	cssProcessor: "stylus"
	browserSync:
		watch: [
			"#{destPath}/js/**/*.js"
			"#{destPath}/css/**/*.css"
			"#{destPath}/**/*.html"
		]
		options:
			proxy: "wbase.my"
	jade:
		options:
			pretty: true
		src: "#{srcPath}/templates/*.jade"
		dest: "#{destPath}"
		dataRelativePath: "../../data/templates/"
	stylus:
		src: "#{srcPath}/styles/*.styl"
		dest: "#{destPath}/css"
		autoprefixer:
			options:
				browsers: ['last 2 version']
		dev:
			options: 
				linenos: true
		prod:
			options:
				compress: true
	browserify:
		bundles: [{
			src: "#{srcPath}/scripts/app/main.coffee"
			dest: "#{destPath}/js/app"
			fileName: "app-bundle.js"
			options:
				transform: ['coffeeify']
				extensions: ['.coffee']
		}]
	scripts:
		libs:
			fileName: "libs-bundle.js"
			dest: "#{destPath}/js/libs"
	inject:
		src: "#{destPath}/index.html"
		dest: "#{destPath}"
		js:
			head:
				src: []
			default:
				src: [
					"#{destPath}/js/libs/libs-bundle.js"
					"#{destPath}/js/app/app-bundle.js"
				]
		css:
			default:
				src: [
					"#{destPath}/css/main.css"
				]
}