# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conference_fetcher/version'

Gem::Specification.new do |spec|
  spec.name          = "conference_fetcher"
  spec.version       = ConferenceFetcher::VERSION
  spec.authors       = ["Kareem Grant"]
  spec.email         = ["kareem@getuserwise.com"]
  spec.description   = %q{Wrapper for the Backchannel-scheduler api}
  spec.summary       = %q{Facilitates communication between Backchannel and Backchannel's messaging service}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
