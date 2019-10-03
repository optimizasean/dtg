module Format
  FORMAT = {
    size: 14,
    size_day: 2,
    size_hour: 2,
    size_minute: 2,
    size_zone: 1,
    size_month: 3,
    size_year: 2,
    day_start: 0,
    day_end: 1,
    day_range: 0..1,
    hour_start: 2,
    hour_end: 3,
    hour_range: 2..3,
    minute_start: 4,
    minute_end: 5,
    minute_range: 4..5,
    zone_start: 6,
    zone_end: 6,
    zone_range: 6,
    month_start: 8,
    month_end: 10,
    month_range: 8..10,
    year_start: 12,
    year_end: 13,
    year_range: 12..13,
  }
end

# 01234567890123
# DDHHMML MMM YY
