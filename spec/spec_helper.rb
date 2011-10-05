PROJECT_ROOT = File.expand_path('..', File.dirname(__FILE__)).freeze
$LOAD_PATH << File.join(PROJECT_ROOT, 'lib')
Dir[File.join(PROJECT_ROOT, 'spec', 'support', '**', '*.rb')].each { |file| require(file) }

require 'rspec'
require 'carrierwave/storage/sftp.rb'

RSpec.configure do |config|
  # TODO
end
