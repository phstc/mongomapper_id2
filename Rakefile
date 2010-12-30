require 'bundler'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

#desc "Run all examples"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*.rb'
  #t.rspec_opts = ['--backtrace']
end