# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jt-partial/version'

Gem::Specification.new do |gem|
  gem.name          = "jt-partial"
  gem.version       = Jt::Partial::VERSION
  gem.authors       = ["jtong"]
  gem.email         = ["tj19832@gmail.com"]
  gem.description   = %q{generate one page application html}
  gem.summary       = %q{partial for haml}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

end
