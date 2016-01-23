require File.join(File.dirname(__FILE__), '../', 'app')
Dir['./spec/support/**/*.rb'].each {|f| require f}

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
