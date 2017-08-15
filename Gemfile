source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# gem 'bcrypt', platforms: :ruby
# gem 'bcrypt', '~> 3.1.11'
# gem 'bcrypt-ruby', '3.1.5', :require => 'bcrypt'
gem 'bcrypt-ruby', '3.1.1.rc1', :require => 'bcrypt'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.5'
  gem 'rails-controller-testing'
  gem 'factory_girl_rails', '~> 4.0'
end


group :development do
 
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen'
  #gem 'listen', '~> 3.0'
end

group :production do
  gem 'pg'
end


gem 'devise'

	#CanCanCan Installation
gem 'cancancan', '~> 1.10'

# Gemfile for Rails 3+, Sinatra, and Merb
gem 'will_paginate', '~> 3.1.0'

gem 'activeadmin'

gem 'stripe'

gem 'dalli'

gem "brakeman", :require => false
