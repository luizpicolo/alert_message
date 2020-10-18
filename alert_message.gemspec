# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require 'version/version'

Gem::Specification.new do |s|
  s.name          = "alert_message"
  s.version       = AlertMessage::Version::VERSION
  s.authors       = ["Luiz Picolo", "Gabriel Medina"]
  s.email         = ["luizpicolo@gmail.com", "gmedina.santos@gmail.com"]
  s.summary       = "Alert Message"
  s.description   = "Simple gem for alerts messages"
  s.homepage      = "https://github.com/luizpicolo/alert_message"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = Dir["spec/**/*"]
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|s|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler', '~> 2.1'
  s.add_development_dependency 'capybara', '~> 3.0', '>= 3.0.0'
  s.add_development_dependency 'rake', '>= 12.3.3'
  s.add_development_dependency 'rails', ['>= 6.0', '< 7']
  s.add_development_dependency 'rspec-rails', '~> 4.0'
  s.add_development_dependency 'selenium-webdriver', '~> 2.53', '>= 2.53.4'
end
