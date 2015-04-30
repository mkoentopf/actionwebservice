## --------------------------------------------------------------------------------
## NOTE:
## This file is not really used at the moment - the *REAL* copy is inside
## the Rakefile and invoked via 'rake package'
## --------------------------------------------------------------------------------
Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'actionwebservice'
  s.summary = "Web service support for Action Pack."
  s.description = %q{Adds WSDL/SOAP and XML-RPC web service support to Action Pack}
  s.version = "3.0.20"

  s.author = "Laurence A. Lee, Leon Breedt, Kent Sibilev"
  s.email = "rubyjedi@gmail.com, bitserf@gmail.com, ksibilev@yahoo.com"
  s.homepage = "http://wiki.github.com/rubyjedi/actionwebservice/"

  s.add_dependency('activesupport')
  s.add_dependency('actionpack')
  s.add_dependency('activerecord')

  s.add_development_dependency 'pry'

  s.has_rdoc = true
  s.requirements << 'none'
  s.require_path = 'lib'
  s.autorequire = 'actionwebservice'

  s.files = [ "Rakefile", "setup.rb", "README", "TODO", "CHANGELOG", "MIT-LICENSE" ]
  s.files += Dir['lib/**/*.rb']
  s.files += Dir['test/**/*']
  s.files += Dir['generators/**/*']
  s.files += Dir['examples/**/*']
end
