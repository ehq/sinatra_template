ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require 'turn'

require File.join(File.dirname(__FILE__), '../init')

include Rack::Test::Methods

def app
  MyApp
end
