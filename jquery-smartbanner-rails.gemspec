# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery-smartbanner-rails/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery-smartbanner-rails"
  spec.version       = JquerySmartbannerRails::Rails::VERSION
  spec.authors       = ['Linc SA']
  spec.email         = ['tech@yellow.lu']
  spec.summary       = 'Use Switchery for Rails'
  spec.description   = 'This gem provides jquery.smartbanner driver for your Rails ' \
                       'application'
  spec.homepage      = 'https://github.com/jasny/jquery.smartbanner'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '~> 4'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
