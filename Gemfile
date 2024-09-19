source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.1'

#rails
gem 'rails', '~> 5.2.4'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

gem 'puma', '~> 3.12'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false, github: 'Shopify/bootsnap', ref: 'v1.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#---------------- database ---------------------
#the database
gem 'mysql2', '~> 0.4.10'
#for testing
gem 'sqlite3', '~> 1.3'

#for grader
gem 'pg', '>= 0.18', '< 1.1'
#gem 'rails-controller-testing'
#for dumping database into yaml
#gem 'yaml_db'


#------------- asset pipeline -----------------
# Gems used only for assets and not required
# in production environments by default.
# sass-rails is depricated, use sassc-rails for newer Rails versions
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.2'

# gem 'material_icons'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', :platforms => :ruby

# Use import map
# No need to use importmap-rails since it's a new feature in Rails 7, and we're using Rails 5.x

# Turbo and Stimulus are not supported in Rails 5, so they are excluded

gem 'haml'
gem 'haml-rails'

gem 'jbuilder', '~> 2.7'

# jquery addition
gem 'jquery-rails'

#syntax highlighter
gem 'rouge'

#bootstrap add-ons
gem 'bootstrap', '~> 4.3.1'
gem 'momentjs-rails'

#----------- user interface -----------------
gem 'simple_form'

#ace editor
gem 'ace-rails-ap'

gem 'mail'
gem 'rdiscount'  #markdown
gem 'rainbow'

gem 'whenever', require: false

#---------------- testiing -----------------------
gem 'minitest-reporters'

#---------------- for console --------------------
gem 'fuzzy-string-match'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '~> 2.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.18'
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 4.1'
end
