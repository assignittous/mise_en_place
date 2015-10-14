# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mise_en_place/version'

Gem::Specification.new do |spec|
  spec.name          = "mise_en_place"
  spec.version       = MiseEnPlace::VERSION
  spec.authors       = ["Steven Ng"]
  spec.email         = ["steven.ng@assignittous.com"]

  spec.summary       = %q{Mise en Place}
  spec.description   = %q{Mise en place}
  spec.homepage      = "http://assignittous.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files`.split($\) # `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = "bin"
  spec.executables   = ["mise-en-place"] # spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }  
  # spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
