# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appicon/version'

Gem::Specification.new do |spec|
  spec.name          = "appicon"
  spec.version       = Appicon::VERSION
  spec.authors       = ["Appaloosa"]
  spec.email         = ["appaloosa.project@octo.com"]
  spec.summary       = %q{Convert and install iOS App icons into an XCode Asset Catalog.}
  spec.homepage      = "https://github.com/appaloosa-store/appicon"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "1.5"
  spec.add_development_dependency "rake", "0.9.2.2"
  spec.add_dependency "commander", "4.1.2"
  spec.add_dependency 'json', '1.8.1'
end
