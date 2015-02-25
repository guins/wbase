srcPath = "./src/"
destPath = "./build/"

module.exports = {
	templateEngine: "jade"
	cssProcessor: "stylus"
	jade:
		src: "#{srcPath}/templates/*.jade"
		dest: "#{destPath}"
		dataRelativePath: "../../data/templates/"
	stylus:
		src: "#{srcPath}/styles/*.styl"
		dest: "#{destPath}/css"
	coffee:
		src: "#{srcPath}/scripts/**/*.coffee"
		dest: "#{destPath}/js"
		options: {}
}