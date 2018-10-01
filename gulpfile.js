var gulp        = require('gulp'),
	sass        = require('gulp-sass'),
	browserSync = require('browser-sync');

gulp.task('sass', function(){//создаем задание с именем sass
	return gulp.src('app/sass/**/*.sass')// выбираем файлы
	.pipe(sass())//преобразуем их
	.pipe(gulp.dest('app/css'))//загружаем результат
	.pipe(browserSync.reload({stream: true}))//обновляем файлы при помощи browser sync
});


gulp.task('browser-sync', function(){
	browserSync({
		proxy: 'test.site/blog/app/',
		notify: false,
	});
});


gulp.task('watch', ['browser-sync', 'sass'], function(){
	gulp.watch('app/sass/**/*.sass', ['sass']);//watch наблюдает за изменениями в файлах sass и выполняет задания в []
	gulp.watch('app/*.php', browserSync.reload);
	gulp.watch('app/*.html', browserSync.reload);
	gulp.watch('app/js/**/*.js', browserSync.reload);
});