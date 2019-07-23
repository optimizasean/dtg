require "dtg/railtie"
require "dtg/zones"
require "dtg/date_time_ext"
require "dtg/time_ext"
require "dtg/active_support/time_with_zone_ext"

module Dtg
  # Zones module has timezones (UTC_Zones) as dtg listings
  include Zones

  # DTG Test to determine if was injected properly into class
  def dtg
    "DTG gem is natively integrated with this class: #{self.class}"
  end

  # Convert the object to the proper zone and then format as dtg in zone
  def to_dtg(zone = :z)
    convert(zone).format(zone)
  end

  # Format the object into specified zone (as dtg)
  def format(zone = :z)
    key = zone.downcase.to_sym
    raise "Error: #{zone} is not a valid zone" unless UTC_ZONES.key?(key)
    dtg = "%d%H%M#{key.upcase.to_s} %b %y"
    strftime(dtg)
  end

  # Convert the object into the proper zone specified
  def convert(zone = :z)
    key = zone.downcase.to_sym
    raise "Error: #{zone} is not a valid zone" unless UTC_ZONES.key?(key)
    key == :j ? self.dup : self.in_time_zone(UTC_ZONES[key])
  end
end
