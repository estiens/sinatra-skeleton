require 'rubygems'
require 'bundler'
Bundler.require(:default)
require ::File.expand_path('my_app',  File.dirname(__FILE__))

# use scss for stylesheets
Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

# use coffeescript for javascript
use Rack::Coffee, root: 'public', urls: '/javascripts'

run MyApp
