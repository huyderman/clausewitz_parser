lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clausewitz_parser/version'

Gem::Specification.new do |spec|
  spec.name          = 'clausewitz_parser'
  spec.version       = ClauswitzParser::VERSION
  spec.authors       = ['Jo-Herman Haugholt']
  spec.email         = %w(johannes@huyderman.com)
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(tests|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'rspec-expectations'

  spec.add_dependency 'treetop'
  spec.add_dependency 'polyglot'
end
