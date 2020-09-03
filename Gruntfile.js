var grunt = require('grunt');

module.exports = function(grunt){
	grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-watch');

	grunt.registerTask('default', ['sass', 'watch']);

	grunt.initConfig({
		sass: {
			dist: {
		    	options: {
		        	style: 'compressed'
		    	},
			  	files: {
					'css/site.css': 'scss/site.scss'
		    	}
			}
		},
		watch: {
			css: {
				files: 'scss/*.scss',
				tasks: ['sass'],
				options: {
					livereload: true
				},
			}
		}
	});
};
