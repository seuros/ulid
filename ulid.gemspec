require_relative 'lib/ulid/version'

Gem::Specification.new do |spec|
  spec.name          = 'ulid'
  spec.version       = ULID::VERSION
  spec.authors       = ['Rafael Sales']
  spec.email         = ['rafaelcds@gmail.com']
  spec.summary       = 'Universally Unique Lexicographically Sortable Identifier implementation for Ruby'
  spec.homepage      = 'https://github.com/rafaelsales/ulid'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6.8'
end
