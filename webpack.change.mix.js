const mix = require('laravel-mix');

// Admin
// mix.webpackConfig({
//     output: {
//         path:__dirname+'/public/dist/admin',
//     }
// });
mix.setPublicPath('public/change');
// mix.setResourceRoot('../');

mix.sass('resources/change/build/scss/app.scss', 'css');
mix.js('resources/change/build/js/app.js','js');

mix.webpackConfig({
  module: {
    rules: [{
      test: /\.js?$/,
      use: [{
        loader: 'babel-loader',
        options: mix.config.babel()
      }]
    }]
  }
});
