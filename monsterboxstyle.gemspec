$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "monsterboxstyle/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "monsterboxstyle"
  s.version     = Monsterboxstyle::VERSION
  s.authors     = ["Bryan Feller"]
  s.email       = ["bryan@monsterboxpro.com"]
  s.homepage    = "TODO: monsterboxpro.com"
  s.summary     = "TODO: Summary of Monsterboxstyle."
  s.description = "TODO: Description of Monsterboxstyle."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.1.5"
  s.add_runtime_dependency 'sass-rails'   , '>= 4.0.0'
  s.add_runtime_dependency 'compass', '1.0.0.alpha.19'
  s.add_runtime_dependency 'compass-rails'
  s.add_runtime_dependency 'coffee-rails' , '>= 4.0.0'


  s.add_development_dependency "pg"
end
