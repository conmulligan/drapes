Gem::Specification.new do |s|
  s.name        = 'drapes'
  s.version     = '0.1.0'
  s.author      = 'Conor Mulligan'
  s.email       = 'conmulligan@gmail.com'
  s.homepage    = 'http://github.com/conmulligan/drapes'
  s.summary     = 'Simple theme engine for rails'
  s.description = 'Drapes is a super-simple theme engine for rails.'
  s.license     = 'MIT'
  
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.1'
  s.files = Dir["#{File.dirname(__FILE__)}/**/*"]
end