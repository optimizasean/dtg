require_relative '../date_time_group'
require 'active_support'
require 'active_support/time'

class ActiveSupport::TimeWithZone
  # Insert DTG Methods into this class
  include DateTimeGroup
end
