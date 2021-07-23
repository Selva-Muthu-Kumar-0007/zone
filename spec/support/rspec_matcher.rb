# frozen_string_literal: true

# RSpec.configure do |config|
#   config.include ActiveStorageValidations::Matchers
# end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
