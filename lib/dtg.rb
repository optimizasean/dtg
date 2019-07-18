require "dtg/railtie"
require "dtg/zones"
require "dtg/date_time_ext"
require "dtg/time_ext"
require "dtg/active_support/time_with_zone_ext"

module Dtg
  def dtg
    "DTG gem is natively integrated with this class: #{self.class}"
  end
end
