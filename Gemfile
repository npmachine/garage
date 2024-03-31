# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.2.3"

gem "rails", "~> 7.1.3"

gem "cssbundling-rails"
gem "jsbundling-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "jbuilder"
gem "redis", ">= 4.0.1"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

### auth
gem "devise", "~> 4.9"
gem "any_login"
gem "omniauth", "~> 2.1" # A generalized Rack framework for multiple-provider authentication
# gem "omniauth-apple", "~> 1.0" # OmniAuth strategy for Sign In with Apple
# gem "omniauth-facebook", "~> 9.0" # OmniAuth strategy for Facebook
# gem "omniauth-github", "~> 2.0" # OmniAuth strategy for GitHub
# gem "omniauth-google-oauth2", "~> 1.0" # OmniAuth strategy for Google OAuth2
# gem "omniauth-rails_csrf_protection", "~> 1.0" # Provides CSRF protection on OmniAuth request endpoint on Rails application.
# gem "omniauth-twitter", "~> 1.4" # OmniAuth strategy for Twitter

### model
gem "annotate"
gem "friendly_id"
gem "sqids"

### view
gem "view_component"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
  gem "brakeman", require: false
  gem "bundler-audit"
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"
  gem "rswag-specs"
  gem "database_cleaner"
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  # gem "standard"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  # gem "erb_lint", require: false
  # gem "hotwire-livereload"
  # gem "i18n-tasks"
  # gem "letter_opener_web"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

gem "heroicon"

# gem "hashid-rails"
# gem "inline_svg"
# gem "invisible_captcha"
# gem "noticed"
# gem "pagy"
# gem "pg_search"
# gem "redcarpet"
# gem "prawn", github: "prawnpdf/prawn"
# gem "prawn-rails"
# gem "pundit"
# gem "rack-attack"
# gem "rails-i18n"
# gem "scout_apm"
# gem "sitemap_generator"
# gem "pretender"
