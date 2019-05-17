require 'minitest/autorun'
require './lib/node'

class NodeTest < MiniTest::Test
  def setup
    @node = Node.new("Burke")
  end

  def test_does_it_exist
    assert_instance_of Node, @node
  end

  def test_it_has_surname
    assert_equal 'Burke', @node.surname
  end

  def test_next_node_starts_nil
    assert_nil @node.next_node
  end
end
