# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cdto/version"

Gem::Specification.new do |s|
  s.name        = "cdto"
  s.version     = Cdto::VERSION
  s.authors     = ["Daniel Nordstrom"]
  s.email       = ["d@nintera.com"]
  s.homepage    = ""
  s.summary     = %q{The cd command on roids.}
  s.description = %q{Tool for quickly changing directory.}

  s.rubyforge_project = "cdto"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
