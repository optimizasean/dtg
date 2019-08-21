require_relative "dtg/version"
require_relative "dtg/date_time_group"
require_relative "dtg/zones"
require_relative "dtg/time_ext"
require_relative "dtg/date_time_ext"
require_relative "dtg/active_support/time_with_zone_ext"

module Dtg
  # Time zone safety setting
  Time.zone ||= 'UTC'

  def self.dtg
    "DTG gem is active"
  end
end
