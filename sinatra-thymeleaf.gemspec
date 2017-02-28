Gem::Specification.new do |s|
  s.name        = 'sinatra-thymeleaf'
  s.version     = '0.1.3'
  s.date        = '2017-03-01'
  s.summary     = "Sinatra support for Thymeleaf.rb templates"
  s.description = "This is an adaptor gem allowing the use of the Thymeleaf.rb template engine as a Tilt rendering engine for Sinatra"
  s.authors     = ["Bogdan Costea"]
  s.email       = 'bogdan@costea.us'
  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "README.md"]
  s.homepage    = 'https://github.com/bcostea/sinatra-thymeleaf'
  s.license     = 'MIT'

  s.add_dependency 'thymeleaf', '~> 0.1.2'
  s.add_dependency 'sinatra', '~> 1.4'
  s.add_dependency 'i18n', '~> 0.7.0'
end
