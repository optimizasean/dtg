require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'pretty up the lib'
task :pretty do
  exec('rbprettier --write lib/**/*.rb')
end
# desc "Explaining what the task does"
# task :dtg do
#   # Task goes here
# end
