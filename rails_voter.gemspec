$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem"s version:
require "rails_voter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_voter"
  s.version     = RailsVoter::VERSION
  s.authors     = ["Sunny Rails Team"]
  s.email       = ["grafska@gmail.com"]
  s.homepage    = "https://github.com/SunnyRails/rails_voter"
  s.summary     = "Voting system for Rails applications"
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "decent_exposure", "~> 3.0.0.beta2"
  s.add_dependency "draper", "~> 1.3"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "bundler", "~> 1.11"
  s.add_development_dependency "rake", "~> 10.0"

  s.add_development_dependency "rspec-rails", "~> 3.0"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"

  s.add_development_dependency "pry-byebug"
  s.add_development_dependency "decent_exposure", "~> 3.0.0.beta2"
  s.add_development_dependency "draper", "~> 1.3"
  s.add_development_dependency "better_errors"
end
