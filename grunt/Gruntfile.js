module.exports = function(grunt) {
    grunt.initConfig({
        watch: {
                files: ['./frontend-utils/scss/*.scss'],
                tasks: ['postcss', 'sass']
        },
        jshint: {
            all: ['Gruntfile.js', './frontend-utils/js/*.js'],
        },
        uglify: {
            build: {
                files: [{
                    expand: true,
                    cwd: './frontend-utils/js',
                    src: '*.js',
                    dest: './static/assets/js',
                }]
            }
        },
        sass: {
            dist: {
                options: {
                    style: 'expanded'
                },
                files: [{
                    expand: true,
                    cwd: './frontend-utils/scss/',
                    src: ['*.scss'],
                    dest: './static/assets/css/',
                    ext: '.css'
                }]
            }
        },
        postcss: {
           options: {
            processors: [
                require('autoprefixer')({
                    browsers: ['last 2 versions']
                }),
            ]
           },
            dist: {
                src: './static/assets/css/*.css',
                dest: './static/assets/css/*.css'
            }
        }
    });

    grunt.loadNpmTasks('grunt-postcss');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-uglify');

    grunt.registerTask('default', ['watch']);
    grunt.registerTask('js', ['jshint', 'uglify']);
};
