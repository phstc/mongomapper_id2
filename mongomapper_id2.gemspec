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
  s.summary     = %q{It’s a MongoMapper plugin to add auto incremented id and to_base62 (short url) for your MongoMapper documents}

  s.rubyforge_project = "mongomapper_id2"
  
  
  s.add_dependency 'mongo_mapper' #,            '>= 0.8.6'
  s.add_dependency 'activesupport',           '>= 2.3.4'
  s.add_dependency 'jnunemaker-validatable',  '~> 1.8.4'
  s.add_dependency 'plucky',                  '~> 0.3.6'

  s.add_development_dependency 'json'
  s.add_development_dependency 'log_buddy'
  s.add_development_dependency 'jnunemaker-matchy', '~> 0.4.0'
  s.add_development_dependency 'shoulda',           '~> 2.11'
  s.add_development_dependency 'timecop',           '~> 0.3.1'
  s.add_development_dependency 'mocha',             '~> 0.9.8'
  
  s.files             = Dir.glob("{bin,examples,lib,rails,test}/**/*") + %w[LICENSE README.rdoc]
  s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_path      = 'lib'
  # s.files         = `git ls-files`.split("\n")
  # s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  # s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  # s.require_paths = ["lib"]
end