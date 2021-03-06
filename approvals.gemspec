# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require 'approvals/version'

Gem::Specification.new do |s|
  s.name        = "approvals"
  s.version     = Approvals::VERSION
  s.licenses    = ['MIT']
  s.authors     = ["Katrina Owen"]
  s.email       = ["katrina.owen@gmail.com"]
  s.homepage    = "https://github.com/kytrinyx/approvals"
  s.summary     = %q{Approval Tests for Ruby}
  s.description = %q{A library to make it easier to do golden-master style testing in Ruby}

  s.rubyforge_project = "approvals"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec', '~> 3.1'

  s.add_dependency 'thor', '~> 1.0'
  s.add_dependency 'nokogiri', '~> 1.11'
  s.add_dependency 'json', '~> 2.0'
end
