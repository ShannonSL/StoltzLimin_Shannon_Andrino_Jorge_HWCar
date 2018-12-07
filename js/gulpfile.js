// gulp modules required
let gulp = require("gulp");
let sass = require("gulp-sass");
const imagemin = require("gulp-imagemin");
let browserSync = require("browser-sync").create();

// server task
gulp.task("serve", function() {
  browserSync.init({
    server: {
      baseDir: "./",
      index: "index.html"
    }
  });
});

// Logs Message
gulp.task("message", function() {
  return console.log("Gulp is running...");
});

// Compile Sass
gulp.task("sass", function() {
  return gulp
    .src("./sass/**/*.scss")
    .pipe(sass({ outputStyle: "compressed" }).on("error", sass.logError))
    .pipe(gulp.dest("./css"));
});

// Optimize Images
gulp.task("imageMin", () =>
  gulp
    .src("images/*")
    .pipe(imagemin())
    .pipe(gulp.dest("images/optimized"))
);

gulp.task("default", ["message", "imageMin", "sass"]);

// watch task running
gulp.task("watch", function() {
  gulp.watch("./sass/**/*.scss", ["sass"]);
  gulp.watch("images/*", ["imageMin"]);
});