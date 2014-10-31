# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "alert_message"
  spec.version       = "0.0.8"
  spec.authors       = ["Luiz Picolo"]
  spec.email         = ["luizpicolo@gmail.com"]
  spec.summary       = "Alert Message"
  spec.description   = "Alert Message"
  spec.homepage      = "http://www.luizpicolo.com.br"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
