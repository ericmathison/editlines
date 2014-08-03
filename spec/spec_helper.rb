require 'editlines'

RSpec.configure do |config|
  config.order = :random
  config.expect_with(:rspec) { |expectations| expectations.syntax = :expect }
end
