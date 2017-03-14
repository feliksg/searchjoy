# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "searchjoy/version"

Gem::Specification.new do |spec|
  spec.name          = "searchjoy"
  spec.version       = Searchjoy::VERSION
  spec.authors       = ["Andrew Kane"]
  spec.email         = ["andrew@chartkick.com"]
  spec.description   = "Search analytics made easy"
  spec.summary       = "Search analytics made easy"
  spec.homepage      = "https://github.com/ankane/searchjoy"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # spec.add_dependency "chartkick", ">= 2"
  # spec.add_dependency "groupdate", ">= 3"
  spec.add_dependency "activerecord", ">= 4"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
