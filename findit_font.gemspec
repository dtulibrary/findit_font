$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "findit_font/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "findit_font"
  s.version     = FinditFont::VERSION
  s.authors     = ["Rikke Willer"]
  s.email       = ["riwi@dtic.dtu.dk"]
  s.homepage    = "https://github.com/dtulibrary/findit_font"
  s.summary     = "Files for DTU FindIT icon font"
  s.description = ""

  s.files = Dir["{app,config,lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "railties", "~> 4.1"

  s.add_development_dependency "activesupport", "~> 4.1"
  s.add_development_dependency "tzinfo"
  s.add_development_dependency "sass-rails"
end
