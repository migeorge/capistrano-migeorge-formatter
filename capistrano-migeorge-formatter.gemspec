# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano-migeorge-formatter/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-migeorge-formatter'
  spec.version       = CapistranoMigeorgeFormatter::VERSION
  spec.authors       = ['Miguel Palhas', 'Mike George']
  spec.email         = ['mike@tallduck.com']
  spec.summary       = %q{A compact custom formatter for capistrano 3}
  spec.description   = %q{A compact custom formatter for capistrano 3}
  spec.homepage      = 'https://github.com/migeorge/capistrano-migeorge-formatter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'sshkit', '~> 1.3'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
