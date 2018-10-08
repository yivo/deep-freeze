# encoding: UTF-8
# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name                  = "deep-freeze"
  s.version               = "1.0.1"
  s.author                = "Yaroslav Konoplov"
  s.email                 = "eahome00@gmail.com"
  s.summary               = "Deep freeze Ruby enumerables."
  s.description           = "A gem providing easy way to deep freeze Ruby enumerables."
  s.homepage              = "https://github.com/yivo/deep-freeze"
  s.license               = "MIT"
  s.files                 = `git ls-files -z`.split("\x0")
  s.test_files            = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths         = ["lib"]
  s.add_development_dependency "bundler", "~> 1.7"
end
