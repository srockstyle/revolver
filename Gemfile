# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'
gem 'rails', '~> 7.0.4'

gem 'sprockets-rails'

gem 'pg'

gem 'jb'
gem 'ridgepole'

gem 'puma', '~> 5.0'

gem 'jbuilder'

# gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  gem 'brakeman', require: false

  gem 'committee-rails'

  gem 'factory_bot_rails'

  gem 'faker'

  gem 'json_spec'

  gem 'pry-rails'

  gem 'rspec-openapi'

  gem 'rspec-rails'

  gem 'rubocop', require: false

  gem 'rubocop-performance', require: false

  gem 'rubocop-rails', require: false

  gem 'rubocop-rspec', require: false

  gem 'ruby-debug-ide', require: false

  gem 'bullet'
end

group :development do
  gem 'annotate'

  gem 'annotate_models'

  gem 'rails-erd'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
