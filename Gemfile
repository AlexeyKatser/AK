source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 6.0.0'

gem 'uglifier', '>= 1.3.0'

gem 'bootstrap'
#gem 'bootstrap-sass'
gem 'turbolinks'
gem 'font-awesome-rails'

gem 'sass-rails'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'i18n'
gem 'russian'

gem 'devise'
gem 'devise-i18n'

gem 'bootsnap'

gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'

gem 'webpacker'
gem 'image_processing'
gem 'activeadmin'

group :production do
	gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
 # Use sqlite3 as the database for Active Record
  gem 'sqlite3' #, git: "https://github.com/larskanis/sqlite3-ruby", branch: "add-gemspec"

end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.4", require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
