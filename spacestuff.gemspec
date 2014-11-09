# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spacestuff/version'

Gem::Specification.new do |spec|
  spec.name          = "spacestuff"
  spec.version       = Spacestuff::VERSION
  spec.authors       = ["suzuki86"]
  spec.email         = ["tsnr0001@gmail.com"]
  spec.summary       = %q{Generate fantastic image.}
  spec.description   = %q{Generate fantastic image.}
  spec.homepage      = "https://github.com/suzuki86/spacestuff.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = "spacestuff"
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rmagick"
end
