# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant_binding/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant_binding"
  spec.version       = VagrantBinding::VERSION
  spec.authors       = ["Ryan Murphy"]
  spec.email         = ["murjax@gmail.com"]

  spec.summary       = "Binds rails server to 0.0.0.0:3000 instead of default localhost:3000 for compatibility with Vagrant"
  spec.description   = "Binds rails server to 0.0.0.0:3000 instead of default localhost:3000"
  spec.homepage      = ""
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
