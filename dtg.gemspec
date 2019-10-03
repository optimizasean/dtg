# Ensure all of library added to gem
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require "dtg/version"

Gem::Specification.new do |spec|
  spec.name        = "dtg"
  spec.version     = Dtg::VERSION
  spec.authors     = ["SolarisFlare"]
  spec.email       = ["shadowbomb20@gmail.com"]
  spec.homepage    = "https://github.com/SolarisFlare/dtg/README.md"
  spec.summary     = "DTG converts from a DateTime to a DTG"
  spec.description = "A DTG is a DateTimeGroup which is used in the military to save time.  DTG 
                      are saved in the format DDHHMML MMM YY, where D is day, H is hour, L is 
                      letter, M is month, and Y is year.  The Month is the 3 character 
                      representation such as JAN for January, MAY for May, DEC for December and so 
                      on.  Year is only the last two digits of the year e.g. 2019 is just 19.  The 
                      letter is the zone code such as W for whiskey which is HST, Z for zulu which 
                      is GMT, A-Z are the zones used."
  spec.license       = "MIT"

  spec.test_files = Dir["spec/**/*"]

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/SolarisFlare/dtg"
    spec.metadata["changelog_uri"] = "https://github.com/SolarisFlare/dtg/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  # Active support is necessary for ActiveSupport::TimeWithZone integration
  spec.add_dependency "activesupport"

  # Bundler to manage gems ad versions
  spec.add_development_dependency "bundler", "~> 1.17"
  # Rake to run tasks
  spec.add_development_dependency "rake", "~> 10.0"
  # RSpec for testing suite
  spec.add_development_dependency "rspec", "~> 3.0"
  # Prettier for better formatting
  spec.add_development_dependency "prettier"
  # Coveralls for test suite reporting
  spec.add_development_dependency "coveralls"
end
