source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 5.2', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'bcrypt'
gem 'rails_12factor'
gem 'foreman'
gem 'dotenv'
gem 'json'


group :development do
  gem 'sqlite3', '<1.4'
  gem 'shotgun'
  gem 'tux'
  gem 'pry'
  gem 'solargraph'
end

group :production do 
  gem 'pg', '0.20'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner'
end
