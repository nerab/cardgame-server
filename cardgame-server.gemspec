# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cardgame-server/version"

Gem::Specification.new do |s|
  s.name        = "cardgame-server"
  s.version     = CardGame::Server::VERSION
  s.authors     = ["Nicholas E. Rabenau"]
  s.email       = ["nerab@gmx.net"]
  s.homepage    = ""
  s.summary     = %q{CardGame API server}
  s.description = %q{Serves the REST API for CardGame services}

  s.rubyforge_project = "cardgame-server"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "cardgame"
  s.add_runtime_dependency "sinatra", "~> 1.3"
end
