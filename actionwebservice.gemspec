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
  s.version = "2.3.5"

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
  s.files = s.files + Dir.glob( "examples/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
  s.files = s.files + Dir.glob( "lib/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
  s.files = s.files + Dir.glob( "test/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
  s.files = s.files + Dir.glob( "generators/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
end
