require 'dtg'
require_relative 'zones'

class DateTime
  include Dtg
  include Zones

  def to_dtg(zone = :z)
    convert(zone).format(zone)
  end

  def format(zone = :z)
    dtg = "%d%H%M#{zone.upcase} %b %y"
    strftime(dtg)
  end

  def convert(zone = :z)
    zone = zone.downcase
    raise "Error: #{zone} is not a valid zone" unless UTC_ZONES.key?(zone)
    zone == :j ? self : self.in_time_zone(UTC_ZONES[zone])
  end
end
