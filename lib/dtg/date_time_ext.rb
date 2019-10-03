require_relative 'date_time_group'
require 'date'
require 'active_support/core_ext/date'
# require "active_support/core_ext/date_and_time"

class DateTime
  # Insert DTG Methods into this class
  include DateTimeGroup
end
