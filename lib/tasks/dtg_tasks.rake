# desc "Explaining what the task does"
# task :dtg do
#   # Task goes here
# end
begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)

  task :default => :spec
rescue LoadError
  # no rspec available
end
