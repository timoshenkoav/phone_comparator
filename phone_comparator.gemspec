# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phone_comparator/version'

Gem::Specification.new do |spec|
  spec.name          = "phone_comparator"
  spec.version       = PhoneComparator::VERSION
  spec.authors       = ["Alexandr Timoshenko"]
  spec.email         = ["thick.tav@gmail.com"]

  spec.summary       = %q{Parse and compare phones from different countries}
  spec.description   = %q{Parse and compare phones from different countries}
  spec.homepage      = "https://github.com/timoshenkoav/phone_comparator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency('phone', '~> 1.2', '>= 1.2.3')
  spec.add_development_dependency('rspec', '~> 3.2', '>= 3.2.0')
end
