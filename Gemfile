source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'pg', '>= 0.18', '< 2.0' # Use postgresql as the database for Active Record
gem 'puma', '~> 3.11' # Use Puma as the app server
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'bootsnap', '>= 1.1.0', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'simple_form', '~> 4.1' # Forms made easy!
gem 'bootstrap', '~> 4.3', '>= 4.3.1'
gem 'devise', '~> 4.6', '>= 4.6.2' 
gem 'haml-rails', '~> 2.0', '>= 2.0.1'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
end

group :development do
  gem 'web-console', '>= 3.3.0' # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
