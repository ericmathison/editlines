# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'editlines/version'

Gem::Specification.new do |spec|
  spec.name          = "editlines"
  spec.version       = Editlines::VERSION
  spec.authors       = ["Eric Mathison"]
  spec.email         = ["dev@ekmathison.com"]
  spec.summary       = %q{Extends core File class with File.editlines to edit lines in place}
  spec.description   = %q{Extends core File class with File.editlines to edit lines in place. File.editlines works like File.foreach except that the return value of its associated block replaces each line in place.}
  spec.homepage      = "https://github.com/ericmathison/editlines"
  spec.license       = "GPL-2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
