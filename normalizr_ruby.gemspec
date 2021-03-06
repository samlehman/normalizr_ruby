# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'normalizr_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "normalizr_ruby"
  spec.version       = NormalizrRuby::VERSION
  spec.authors       = ["shinya takahashi"]
  spec.email         = ["s.takahashi313@gmail.com"]

  spec.summary       = "Normalizr format JSON response generator"
  spec.description   = "Normalizr format JSON response generator"
  spec.homepage      = "https://github.com/oreshinya/normalizr_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", [">= 5.0", "< 6"]
  spec.add_dependency "actionpack", [">= 5.0", "< 6"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "activerecord", [">= 5.0", "< 6"]
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-power_assert"
end
