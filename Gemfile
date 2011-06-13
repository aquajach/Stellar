source 'http://rubygems.org'

gem 'rails', '~> 3.0.7'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem "mongoid",  "2.0.1"
gem "bson_ext", "1.3.1"
gem 'rake', '0.8.7'
gem "omniauth", "0.2.6"
# Client side
gem "compass"
gem "haml"
gem "html5-boilerplate"
gem "jquery-rails"

# packaging
gem "jammit"   # use sprockets instead? coz this will be included in rails 3.1

# experimental
gem "coffeebeans"

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'

# try steak?

# end

group :test, :spec, :development do
  gem "rspec",  "2.6.0"
  gem "rspec-rails",  "2.6.0"
  gem "capybara", "1.0.0.beta1"
  gem 'steak', '>= 2.0.0.beta1'
  gem "database_cleaner", "0.6.7"
end

