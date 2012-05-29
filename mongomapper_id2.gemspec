# -*- encoding: utf-8 -*-
# http://asciicasts.com/episodes/245-new-gem-with-bundler
$:.push File.expand_path("../lib", __FILE__)
require "mongomapper_id2/version"

Gem::Specification.new do |s|
  s.name        = "mongomapper_id2"
  s.version     = MongomapperId2::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pablo Cantero"]
  s.email       = ["pablo@pablocantero"]
  s.homepage    = "https://github.com/phstc/mongomapper_id2"
  s.summary     = %q{It is a MongoMapper's plugin to add auto incremented id in MongoMapper's documents.}

  s.rubyforge_project = "mongomapper_id2"
  
  
  s.add_dependency 'mongo_mapper'

  s.add_development_dependency 'log_buddy'
  s.add_development_dependency 'jnunemaker-matchy'
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'timecop'
  s.add_development_dependency 'mocha'
  
  s.files             = Dir.glob("{bin,examples,lib,rails,test}/**/*") + %w[LICENSE README.rdoc]
  s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_path      = 'lib'
end
