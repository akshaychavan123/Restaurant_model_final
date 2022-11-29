// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
const webpack = require ("webpack")
enviornment.plugings.append("provide" , new webpack.
ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js' , 'defaukt']
}))
 import "~bootstrap/scss/bootstrap.scss";
 import "@bootstrap/scss/bootstrap.scss";