# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "step_definitions_viewer/version"

Gem::Specification.new do |s|
  s.name        = "step_definitions_viewer"
  s.version     = StepDefinitionsViewer::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Rizwan Reza"]
  s.email       = ["rizwanreza@gmail.com"]
  s.homepage    = "http://github.com/rizwanreza/step_definitions_viewer"
  s.summary     = %q{Shows step definitions nicely for rapid cuking.}

  s.rubyforge_project = "step_definitions_viewer"

  s.add_dependency('thor', '0.14.6')
  s.add_dependency('terminal-display-colors', '~> 0.0.2')
  s.add_development_dependency('rspec', '~> 2.4.0')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
