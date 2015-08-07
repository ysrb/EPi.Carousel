/*
This file in the main entry point for defining Gulp tasks and using Gulp plugins.
Click here to learn more. http://go.microsoft.com/fwlink/?LinkId=518007
*/

var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('default', function () {
    gulp.src('Content/modules/epi.carousel.owl.scss')
        .pipe(sass())
        .pipe(gulp.dest('Content/modules'));
});