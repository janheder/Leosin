'use strict';

var gulp = require('gulp');
var browserSync = require('browser-sync').create();
var sass = require('gulp-sass');
var sourcemaps = require('gulp-sourcemaps');
var postcss = require('gulp-postcss');
var uglify = require('gulp-uglify');
var pump = require('pump');
var concat = require('gulp-concat');
var autoprefixer= require('autoprefixer');
var sassGlob = require('gulp-sass-glob');
const babel = require('gulp-babel');

// COMPILE SASS
gulp.task('sass', function () {
  var processors = [ autoprefixer()];
  return gulp.src('./scss/**/*.scss')
    .pipe(sourcemaps.init())
    .pipe(sassGlob()) 
    .pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
    .pipe(concat('style.min.css'))
    .pipe(postcss(processors))
    .pipe(sourcemaps.write('./maps'))
    .pipe(gulp.dest('../assets/css'));
});
 
gulp.task('sass:watch', function () {
  gulp.watch('./scss/**/*.scss', ['sass']);
});


// MINIFY JS
gulp.task('minifyjs', function (cb) {
  pump([
        gulp.src('./js/**/*.js'),
        sourcemaps.init(),
        concat('theme.min.js'),
        babel({
          presets: ['@babel/preset-env']
        }),
        uglify(),
        sourcemaps.write('./maps'),
        gulp.dest('../assets/js')
    ],
    cb
  );
});

gulp.task('minifyjs:watch', function () {
  gulp.watch('./js/*.js', ['minifyjs']);
});


// SERVE
gulp.task('serve', function(){

	browserSync.init({
    port: 4000,
    proxy: "localhost:8888/prestashop"
  });
  
	gulp.watch('../assets/**/*.css').on('change', browserSync.reload);
});


//DEFAULT
gulp.task('default', ['sass:watch', 'minifyjs:watch', 'serve']);

