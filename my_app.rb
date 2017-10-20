require 'sinatra'

require 'pry'

require 'sass/plugin/rack'
require 'rack/coffee'


class MyApp < Sinatra::Base
  set :views, settings.root + '/app/views'
  set :haml, :format => :html5
  set :haml, :layout => true

  get "/" do
    haml :index, layout: true
  end
end
