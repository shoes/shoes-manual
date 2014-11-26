# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shoes/manual/version'

Gem::Specification.new do |spec|
  spec.name          = "shoes-manual"
  spec.version       = Shoes::Manual::VERSION

  spec.authors     = ["Team Shoes"]
  spec.email       = ["shoes@librelist.com"]
  spec.homepage    = "https://github.com/shoes/shoes-manual"
  spec.summary       = %q{Content for the Shoes manual}
  spec.description   = %q{Content and loading classes for the Shoes manual}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake",    "~> 10.0"
  spec.add_development_dependency "pry",     "~> 0.10.0"
end
