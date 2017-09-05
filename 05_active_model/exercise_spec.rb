require_relative "exercise"
require "shoulda-matchers"

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :active_model
  end
end

RSpec.describe Exercise, type: :model do
  # TODO: add specs for validations
end
