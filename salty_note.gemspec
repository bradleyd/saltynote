# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'salty_note/version'

Gem::Specification.new do |spec|
  spec.name          = "salty_note"
  spec.version       = SaltyNote::VERSION
  spec.authors       = ["Bradley Smith"]
  spec.email         = ["bradleydsmith@gmail.com"]
  spec.description   = %q{Command line note application that encrypts notes on cloud storage (DropBox, UbuntuOne,etc..) }
  spec.summary       = %q{Command line encrypted note application}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
