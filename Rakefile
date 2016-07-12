require "rspec/core/rake_task"

unless ENV["RACK_ENV"] == "production"
  require "rambo"
  Rambo::Rake::Task.new
  RSpec::Core::RakeTask.new

  task :default => [:rambo, :spec]
end