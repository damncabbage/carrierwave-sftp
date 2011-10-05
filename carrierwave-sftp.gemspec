Gem::Specification.new do |s|
  s.name        = "carrierwave-sftp"
  s.version     = "0.0.1"
  s.authors     = ["Rob Howard"]
  s.email       = "robert.john.howard@gmail.com"
  s.homepage    = "http://github.com/damncabbage/carrierwave-sftp"
  s.summary     = "SFTP storage support for the CarrierWave file upload gem."
  s.description = "SFTP storage support for the CarrierWave file upload gem."

  s.files        = Dir["{lib,spec}/**/*", "[A-Z]*"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
end
