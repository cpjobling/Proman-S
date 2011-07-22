require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

desc "run the server"
task :run do |t|
  require "./src/proman_app.rb"
  PromanApp.run!
end

namespace :features do
  Cucumber::Rake::Task.new(:all) do |t|
    t.profile = "default"
  end


  Cucumber::Rake::Task.new(:ok) do |t|
    t.profile = "ok"
  end

  Cucumber::Rake::Task.new(:wip) do |t|
    t.profile = "wip"
  end
end

namespace :spec do
  desc "Run all examples"
  RSpec::Core::RakeTask.new('all')
end
