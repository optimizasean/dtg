# Ensure all of library added to gem
$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "dtg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "dtg"
  spec.version     = Dtg::VERSION
  spec.authors     = ["SolarisFlare"]
  spec.email       = ["shadowbomb20@gmail.com"]
  spec.homepage    = "https://github.com/SolarisFlare/dtg/"
  spec.summary     = "DTG converts from a DateTime to a DTG"
  spec.description = "A DTG is a DateTimeGroup which is used in the military to save time.  DTG 
                      are saved in the format DDHHMML MMM YY, where D is day, H is hour, L is 
                      letter, M is month, and Y is year.  The Month is the 3 character 
                      representation such as JAN for January, MAY for May, DEC for December and so 
                      on.  Year is only the last two digits of the year e.g. 2019 is just 19.  The 
                      letter is the zone code such as W for whiskey which is HST, Z for zulu which 
                      is GMT, A-Z are the zones used."
  spec.license     = "MIT"
  spec.required_rubygems_version = Gem::Requirement.new(">= 0") if spec.respond_to? \
                                                                  :required_rubygems_version=
  spec.files = Dir["Gemfile", "dtg.gemspec", "Rakefile", "lib/**/*"]
  spec.test_files = Dir["spec/**/*"]
  spec.rubygems_version = %q{1.6.2}

  # Active support is necessary for ActiveSupport::TimeWithZone integration
  spec.add_dependency "activesupport"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  if spec.respond_to? :specification_version then
    spec.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    end
  end
end
