require File.join(File.dirname(__FILE__), '../', 'app')

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
