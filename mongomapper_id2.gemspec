# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongomapper_id2/version"

Gem::Specification.new do |s|
  s.name        = "mongomapper_id2"
  s.version     = MongomapperId2::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pablo Cantero"]
  s.email       = ["pablo@pablocantero"]
  s.homepage    = "https://github.com/phstc/mongomapper_id2"
  s.summary     = %q{Auto increment id and short url generator for MongoMapper}
  s.description = %q{See on GitHub https://github.com/phstc/mongomapper_id2}

  s.rubyforge_project = "mongomapper_id2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
