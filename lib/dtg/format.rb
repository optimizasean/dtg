# Data about the format of a dtg to aid parsing
module Format
  # Structure of a dtg
  # 01234567890123
  # DDHHMML MMM YY

  FORMAT = {
    # Size of 
    size: 14,
    # Size of day field
    size_day: 2,
    # Size of hour field
    size_hour: 2,
    # Size of minute field
    size_minute: 2,
    # Size of zone field
    size_zone: 1,
    # Size of month field
    size_month: 3,
    # Size of year field
    size_year: 2,
    # Start index of day field
    day_start: 0,
    # End index of day field
    day_end: 1,
    # Index range of day field
    day_range: 0..1,
    # Start index of hour field
    hour_start: 2,
    # End index of hour field
    hour_end: 3,
    # Index range of hour field
    hour_range: 2..3,
    # Start index of minute field
    minute_start: 4,
    # End index of minute field
    minute_end: 5,
    # Index range of minute field
    minute_range: 4..5,
    # Start index of zone field
    zone_start: 6,
    # End index of zone field
    zone_end: 6,
    # Index range of zone field
    zone_range: 6..6,
    # Start index of month field
    month_start: 8,
    # End index of month field
    month_end: 10,
    # Index range of month field
    month_range: 8..10,
    # Start index of year field
    year_start: 12,
    # End index of year field
    year_end: 13,
    # Index range of year field
    year_range: 12..13
  }
end
