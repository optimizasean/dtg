source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Declare your gem's dependencies in dtg.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# Used to test this gem for compatability and functionality
group :development, :test do
  # Used for test suite reporting
  gem 'coveralls', require: false

  # RSpec for testing suite
  gem "rspec"
  gem "rspec-core"
  gem "rspec-expectations"
  gem "rspec-mocks"
  gem "rspec-support"

  # Prettier for better looking code
  gem "prettier"

  # Rake to run tasks
  gem "rake"
end
