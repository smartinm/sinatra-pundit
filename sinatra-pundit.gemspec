# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra/pundit/version'

Gem::Specification.new do |spec|
  spec.name          = "sinatra-pundit"
  spec.version       = Sinatra::Pundit::VERSION
  spec.authors       = ["Sergio Martín Morillas"]
  spec.email         = ["smartin@flexiant.com"]

  spec.summary       = %q{Pundit authorization wrapper for Sinatra.}
  spec.description   = %q{Minimal authorization through OO design and pure Ruby classes in your Sinatra application.}
  spec.homepage      = "https://github.com/smartinm/sinatra-pundit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "pundit", "~> 1.0"
  spec.add_dependency "sinatra", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
