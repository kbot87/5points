const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */
mix.copy('resources/fonts/', 'public/fonts/');
mix.copy('resources/img/', 'public/img/');
mix.copy('resources/js/vendor/jquery-2.2.4.min.js', 'public/js/vendor/jquery-2.2.4.min.js');
mix.copy('resources/js/vendor/bootstrap.min.js', 'public/js/vendor/bootstrap.min.js');
mix.copy('resources/js/jquery.ajaxchimp.min.js', 'public/js/jquery.ajaxchimp.min.js');
mix.copy('resources/js/jquery.magnific-popup.min.js', 'public/js/jquery.magnific-popup.min.js');
mix.copy('resources/js/parallax.min.js', 'public/js/parallax.min.js');
mix.copy('resources/js/owl.carousel.min.js', 'public/js/owl.carousel.min.js');
mix.copy('resources/js/jquery.nice-select.min.js', 'public/js/jquery.nice-select.min.js');
mix.copy('resources/js/jquery.sticky.js', 'public/js/jquery.sticky.js');
mix.copy('resources/js/hexagons.min.js', 'public/js/hexagons.min.js');
mix.copy('resources/js/jquery.counterup.min.js', 'public/js/jquery.counterup.min.js');
mix.copy('resources/js/waypoints.min.js', 'public/js/waypoints.min.js');
mix.copy('resources/js/jquery.form.js', 'public/js/jquery.form.js');
mix.copy('resources/js/jquery.validate.min.js', 'public/js/jquery.validate.min.js');
mix.copy('resources/js/contact.js', 'public/js/contact.js');
mix.copy('resources/js/gmaps.min.js', 'public/js/gmaps.min.js');

mix.js('resources/js/app.js', 'public/js')
/*  .js('resources/js/vendor/jquery-2.2.4.min.js', 'public/js/vendor/jquery-2.2.4.min.js')
    .js('resources/js/vendor/bootstrap.min.js', 'public/js/vendor/bootstrap.min.js')
    .js('resources/js/jquery.ajaxchimp.min.js', 'public/js/jquery.ajaxchimp.min.js')
    .js('resources/js/jquery.magnific-popup.min.js', 'public/js/jquery.magnific-popup.min.js')
    .js('resources/js/parallax.min.js', 'public/js/parallax.min.js')
    .js('resources/js/owl.carousel.min.js', 'public/js/owl.carousel.min.js')
    .js('resources/js/jquery.nice-select.min.js', 'public/js/jquery.nice-select.min.js')
    .js('resources/js/jquery.sticky.js', 'public/js/jquery.sticky.js')
    .js('resources/js/hexagons.min.js', 'public/js/hexagons.min.js')
    .js('resources/js/jquery.counterup.min.js', 'public/js/jquery.counterup.min.js')
    .js('resources/js/waypoints.min.js', 'public/js/waypoints.min.js')
    */
    .js('resources/js/main.js', 'public/js/main.js')
    .sass('resources/sass/app.scss', 'public/css')
    .styles('resources/css/linearicons.css', 'public/css/linearicons.css')
    .styles('resources/css/font-awesome.min.css', 'public/css/font-awesome.min.css')
    .styles('resources/css/bootstrap.css', 'public/css/bootstrap.css')
    .styles('resources/css/magnific-popup.css', 'public/css/magnific-popup.css')
    .styles('resources/css/owl.carousel.css', 'public/css/owl.carousel.css')
    .styles('resources/css/hexagons.min.css', 'public/css/hexagons.min.css')
    .styles('resources/css/nice-select.css', 'public/css/nice-select.css')
    .styles('resources/css/main.css', 'public/css/main.css');


