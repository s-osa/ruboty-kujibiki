# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/kujibiki/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-kujibiki"
  spec.version       = Ruboty::Kujibiki::VERSION
  spec.authors       = ["OSA Shunsuke"]
  spec.email         = ["shunsuke-osa@cookpad.com"]

  spec.summary       = %{Choose an element from comma separated strings.}
  spec.description   = %q{Kujibiki is unbalance. Do you like mushroom?}
  spec.homepage      = "https://github.com/s-osa/ruboty-kujibiki"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruboty"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
