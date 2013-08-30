# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tmuxme/version'

Gem::Specification.new do |spec|
  spec.name          = "tmuxme"
  spec.version       = Tmuxme::VERSION
  spec.authors       = ["Andrew De Ponte"]
  spec.email         = ["cyphactor@gmail.com"]
  spec.description   = %q{The official client for the http://tmux.me pair programming service}
  spec.summary       = %q{Command line client for the http://tmux.me pairing service.}
  spec.homepage      = "http://tmux.me"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "rest-client", "~> 1.6.7"
  spec.add_dependency "net-ssh", "~> 2.6.8"
end
