require 'dtg'
require_relative 'zones'

class ActiveSupport::TimeWithZone
  include Dtg
  include Zones

  def to_dtg(zone = :z)
    convert(zone).format(zone)
  end

  def format(zone = :z)
    key = zone.downcase.to_sym
    raise "Error: #{zone} is not a valid zone" unless UTC_ZONES.key?(key)
    dtg = "%d%H%M#{key.upcase.to_s} %b %y"
    strftime(dtg)
  end

  def convert(zone = :z)
    key = zone.downcase.to_sym
    raise "Error: #{zone} is not a valid zone" unless UTC_ZONES.key?(key)
    key == :j ? self.dup : self.in_time_zone(UTC_ZONES[key])
  end
end
