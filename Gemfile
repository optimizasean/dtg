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

# Development and Test of DTG Gem dependencies
group :development, :test do

  gem "cadre"

  # Used for test suite reporting
  gem 'coveralls', require: false

  # Find places where code can be sped up
  gem "fasterer"

  # Code quality
  gem "guard"
  gem "guard-reek"
  gem "guard-rspec"
  gem "guard-rubocop"

  # Check code quality extensions on git actions
  gem "overcommit"

  # Community approved rails practices for better format
  gem "rails_best_practices"

  # Detect code smells for bad/strage code
  gem "reek"

  # RSpec for testing suite
  gem "rspec"

  # Code quality enforcer
  gem "rubocop", "0.65.0"
  gem "rubocop-rspec"

  # StandardRB checks for consistent ruby conventions
  gem "standard"
end
