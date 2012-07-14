# -*- encoding: utf-8 -*-
require File.expand_path('../lib/brainfuckrb/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Luka Dornhecker"]
  gem.email         = ["luka.dornhecker@gmail.com"]
  gem.description   = %q{Brainfuck implementation in Ruby}
  gem.summary       = %q{Brainfuck implementation in Ruby}
  gem.homepage      = "http://lukad.github.com/brainfuckrb"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "brainfuckrb"
  gem.require_paths = ["lib"]
  gem.version       = Brainfuckrb::VERSION
end
