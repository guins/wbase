srcPath = "./src/"
destPath = "./build/"

module.exports = {
	templateEngine: "jade"
	cssProcessor: "stylus"
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
		}]
}