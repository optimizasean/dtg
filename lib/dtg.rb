# DTG version
require_relative "dtg/version"
# Base module which contains all functionality
require_relative "dtg/date_time_group"
# Zone codes and their offsets
require_relative "dtg/zones"
# Format of DTG data (for conversion purposes)
require_relative "dtg/format"
# Extension of DTG into Time object for native compatability
require_relative "dtg/time_ext"
# Extension of DTG into DateTime object for native compatability
require_relative "dtg/date_time_ext"
# Extension of DTG into ActiveSupport::TimeWithZone object for native compatability
require_relative "dtg/active_support/time_with_zone_ext"

# Base module: Debug if active by calling Dtg.dtg to also check your current running version
module Dtg
  # Errors are nice
  class Error < StandardError; end
  
  # Announce DTG version and if incorporated properly into the application
  def self.dtg
    "DTG gem is active running version: #{VERSION}"
  end
end
