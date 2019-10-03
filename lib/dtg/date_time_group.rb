require_relative 'zones'
require_relative 'format'

module DateTimeGroup
  # Zones module has timezones (UTC_Zones) as dtg listings
  include Zones
  include Format

  # Convert the object to the proper zone and then format as dtg in zone
  def to_dtg(zone = :z)
    convert(zone).format(zone)
  end

  # DTG Test to determine if was injected properly into class
  def dtg
    "DTG gem is natively integrated with this class: #{self.class}"
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

  def parse_dtg(dtg)
    {
      day: dtg[FORMAT[:day_range]],
      hour: dtg[FORMAT[:hour_range]],
      minute: dtg[FORMAT[:minute_range]],
      zone: dtg[FORMAT[:zone_range]],
      month: dtg[FORMAT[:month_range]],
      year: dtg[FORMAT[:year_range]]
    }
  end

  def from_dtg(dtg)
    dtg_hash = parse_dtg(dtg)
    year = dtg_hash[:year].to_i
    if (Time.now.year % 100) < year
      year = Time.now.year
    else
      year_temp = Time.now.year
      year += year_temp - year_temp % 100
    end
    zone = UTC_ZONES[dtg_hash[:zone].downcase.to_sym].to_s
    puts zone
    if zone.blank?
      zone = '+00:00'
    elsif zone == 'UTC'
      zone = '+00:00'
    elsif zone.size == 2
      zone = zone[0] + '0' + zone[1] + ':00'
    else
      zone += ':00'
    end
    puts zone
    Time.new(
      year,
      dtg_hash[:month],
      dtg_hash[:day].to_i,
      dtg_hash[:hour].to_i,
      dtg_hash[:minute].to_i,
      0,
      zone
    )
  end

  def change_dtg(dtg, zone = :w)
    old = from_dtg(dtg)
    old.to_dtg(zone)
  end
end
