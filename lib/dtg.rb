require "dtg/railtie"
require "dtg/zones"
require "dtg/core_datetime_ext"
require "dtg/core_time_ext"
require "dtg/core_time_with_zone_ext"

module Dtg
  def dtg
    "DTG gem is natively integrated with this class: #{self.class}"
  end
end
