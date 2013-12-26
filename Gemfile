source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use mysql as the database for Active Record
gem 'mysql2'

gem 'puma'

# -------- Assets ----------
gem 'haml-rails'
gem 'sass-rails', '~> 4.0.0'
gem 'google-webfonts-rails'
gem 'google-webfonts'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'haml_coffee_assets'

gem 'bourbon'
gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass'
gem 'font-awesome-rails'
gem 'crummy', github: 'zachinglis/crummy'
# --------------------------

gem 'redcarpet'

gem 'country_select', '~> 1.2.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Markdown
gem 'maruku'
gem 'redcarpet'
gem 'rouge'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Authentication
gem 'devise'

group :development do
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'pry-rails'
  gem 'letter_opener'
end

group :test do
  gem 'fuubar'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'spork-rails', '~> 4.0'
  gem 'guard-spork'
  gem 'guard'
  gem 'guard-rspec'
end

# `rspec-rails` needs to be in the development group so that Rails generators work.
group :development, :test do
  gem 'rspec-rails' 
  gem "capybara", "2.1.0"
end

