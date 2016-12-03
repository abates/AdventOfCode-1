# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adventOfCode/version'

Gem::Specification.new do |spec|
  spec.name          = 'adventOfCode'
  spec.version       = AdventOfCode::VERSION
  spec.authors       = ['Kevin Kirsche']
  spec.email         = ['Kev.Kirsche@gmail.com']

  spec.summary       = %q{Advent of Code 2016}
  spec.description   = %q{Answers for the Advent of Code 2016}
  spec.homepage      = 'https://github.com/kkirsche/AdventOfCode'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'minitest', '~> 5.8'
  spec.add_development_dependency 'rake', '~> 10.0'
end
