# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["anehing"]
  spec.email         = ["aneing@gmai.com"]
  spec.summary       = %q{A Rake-based Web Framework}
  spec.description   = %q{A Rake-based Web Framework, but with extra awesome}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"
  spec.add_runtime_dependency "rest-client"
<<<<<<< HEAD
  spec.add_runtime_dependency "rack"
=======
  spec.add_runtime_dependency "erubis"
  spec.add_runtime_dependency "rack"
  spec.add_runtime_dependency "multi_json"
  spec.add_runtime_dependency "sqlite3"
>>>>>>> dc733b6604dc099431dd07a4100904dde1f0a7b6
end
