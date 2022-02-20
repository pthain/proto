# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/util/cli'

##
# Automate user input with CLI
class CLITest < Minitest::Test
  def test_call_response
    puts('call')
    input = StringIO.new('foo')
    cli = CLI.new(input, nil)
    value = cli.in
    puts(value)
    assert_equal 'foo', value
  end
end
