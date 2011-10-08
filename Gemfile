source 'http://rubygems.org'

gem 'sinatra', :git => "git://github.com/sinatra/sinatra.git"

# Template engines
gem 'haml', '>= 3.1.2'
gem 'sass', '>=3.1.7'

# JS Compression and extensions
gem "jsmin"
gem "coffee-script"
gem "sinatra-support", "~> 1.2.0", :require => "sinatra/support"

# Authentication
gem 'bcrypt-ruby', :require => 'bcrypt'
gem 'omniauth', '>= 0.2.6'

# User Avatars
gem 'gravatar-ultimate'

group :development, :test do
  gem 'sinatra-reloader', :require => "sinatra/reloader"
  gem 'faker'
end

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'timecop'
  gem 'selenium-webdriver'
  gem 'ansi', ">= 1.3.0"
  gem 'turn', :require => false
end

group :production do
  gem 'unicorn'
  gem 'therubyracer-heroku', '0.8.1.pre3'
end
