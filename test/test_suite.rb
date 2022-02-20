# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/util/cli'
require_relative '../lib/gamestates/proto'

# Test you can exit proto
class ProtoTest < Minitest::Test
  def test_exit
    input = StringIO.new('y')
    cli = CLI.new(input)
    proto = Proto.new(cli)
    proto.run
    assert_equal proto.is_running, false
  end
end
# require_relative 'proto_test'
# ProtoTest.new

# require 'minitest/autorun'
# require_relative '../lib/main'

# Test Suite
# class TestSuite < Minitest::Test
# end
