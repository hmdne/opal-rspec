require 'file'
require 'dir'
require 'thread'

# production
# require 'opal-rspec/rspec'
# development
require 'rspec-builder'

require 'opal-rspec/fixes'
require 'opal-rspec/text_formatter'
require 'opal-rspec/runner'

RSpec.configure do |config|

  # For now, always use our custom formatter for results
  config.formatter = OpalRSpec::TextFormatter

  # Always support expect() and .should syntax (we should not do this really..)
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

