ENV['RACK_ENV'] ||= 'development'

require "bundler"
Bundler.require :default, ENV['RACK_ENV'].to_sym

class MyApp < Sinatra::Base
  use Rack::Session::Cookie

  set :root, lambda { |*args| File.join(File.dirname(__FILE__), *args) } # E.g.: root("app/models/foo.rb").
  set :run,  lambda { __FILE__ == $0 and not running? }
  set :views, root('app', 'views')

  # haml/sass/scss
  set :haml, :layout => :layout, :ugly => true, :format => :html5
  set :scss, { :load_paths => [root('app/css')] }

  enable :raise_errors, :sessions, :logging
end

# Load env specific configs.
require "./environments.rb"

# Require application files.
['./initializers/*.rb', './app/models/*.rb', './app/routes/*.rb'].each do |path|
  Dir[path].sort.each { |file| require file }
end

# Run the app.
MyApp.set :port, ENV['PORT'].to_i if ENV['PORT']
MyApp.run! if MyApp.run?
