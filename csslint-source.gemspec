Gem::Specification.new do |s|
  s.name      = 'csslint-source'
  s.version   = '2012.03.16'
  s.date      = '2012-03-16'

  s.homepage    = 'http://csslint.net/'
  s.summary     = 'CSSLint Source Code'
  s.description = 'A RubyGem packaging of the CSSLint code quality utility.'

  s.files = [
    'lib/csslint-source.rb',
    'lib/csslint_source.rb',
    'lib/csslint/source.rb',
    'vendor/csslint/release/csslint.js',
    'LICENSE'
  ]

  s.add_development_dependency 'rspec'

  s.authors = ['Nicole Sullivan', 'Nicholas C. Zakas', 'Daniel Holz']
  s.email   = 'dgholz@gmail.com'
end
