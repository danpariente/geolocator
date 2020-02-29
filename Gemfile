source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "activerecord-postgis-adapter", "~> 6.0.0"
gem "bootsnap", ">= 1.4.2", require: false
gem "geocoder", "~> 1.5.1"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.12"
gem "rack-cors", "~> 1.0.3"
gem "rails", "~> 6.0.0"
gem "sidekiq", "~> 5.2.7"

group :development, :test do
  gem "byebug", platforms: :mri
  gem "rspec-rails", "~> 3.8"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "factory_bot_rails"
  gem "shoulda-matchers", require: false
  gem "simplecov", require: false
  gem "webmock", require: false
end
