source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'rqrcode', '>= 1.0.0.pre'

group :development, :test do
	gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
	gem 'sqlite3'
end

group :production do
	gem 'pg'
end

group :development do
	gem 'better_errors'
	gem 'rubocop'
	gem 'rubocop-performance'
	gem 'rubocop-rails'
	gem 'listen', '>= 3.0.5', '< 3.2'
	gem 'spring'
	gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
	gem 'capybara', '>= 2.15'
	gem 'selenium-webdriver'
	gem 'chromedriver-helper'
end

gem "rotp", "~> 5.1"
