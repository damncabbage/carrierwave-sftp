Gem::Specification.new do |s|
  s.name        = "carrierwave-sftp"
  s.version     = "0.0.1"
  s.authors     = ["Rob Howard"]
  s.email       = ["damncabbage@gmail.com"]
  s.homepage    = "http://github.com/damncabbage/carrierwave-sftp"
  s.summary     = "SFTP storage support for the CarrierWave file upload gem."
  s.description = "SFTP storage support for the CarrierWave file upload gem."

  s.files        = Dir["{lib,spec}/**/*", "[A-Z]*"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.5"

  s.add_development_dependency "rspec", ["~> 2.0"]
end
