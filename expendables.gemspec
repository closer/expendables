# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'expendables/version'

Gem::Specification.new do |spec|
  spec.name          = "expendables"
  spec.version       = Expendables::VERSION
  spec.authors       = ["Eido NABESHIMA"]
  spec.email         = ["closer009@gmail.com"]
  spec.summary       = %q{Strong power for Ruby.}
  spec.description   = %q{install extra methods into native classes.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
