require 'minitest/autorun'
require './lib/linked_list'

class LinkedListTest < MiniTest::Test
  def setup
    @linked_list = LinkedList.new
  end

  def test_does_it_exist
    assert_instance_of LinkedList, @linked_list
  end

  def test_instance_variables
    assert_nil @linked_list.head
  end

  def test_append_method_adds_node
    refute_nil @linked_list.append("West")
  end

  def test_head_next_node_nil
    @linked_list.append("West")

    assert_nil @linked_list.head.next_node
  end

  def test_count_method_counts_number_of_nodes
    @linked_list.append("West")

    assert_equal 1, @linked_list.count
  end

  def test_the_strings_of_families
    @linked_list.append("West")
    assert_equal "The West family", @linked_list.to_string
  end

  def test_the_head_is_now_set_and_next_node_nil
    @linked_list.append("West")
    refute_nil @linked_list.head
    assert_nil @linked_list.head.next_node
  end

  def test_adding_two_nodes
    @linked_list.append("West")
    @linked_list.append("Hardy")
    string = "The West family, followed by the Hardy family"

    refute_nil @linked_list.head
    refute_nil @linked_list.head.next_node
    assert_equal 2, @linked_list.count
    assert_equal string, @linked_list.to_string
  end

  def test_you_can_prepend_nodes
    @linked_list.append("Hardy")
    @linked_list.append("Henderson")

    @linked_list.prepend("McKinney")

    string = "The McKinney family, followed by the Hardy family, followed by the Henderson family"

    assert_equal string, @linked_list.to_string
    assert_equal 3, @linked_list.count
  end

  def test_you_can_insert_at_position
    @linked_list.append("Hardy")
    @linked_list.append("Henderson")
    @linked_list.insert(1, "Lawson")

    string = "The Hardy family, followed by the Lawson family, followed by the Henderson family"

    assert_equal string, @linked_list.to_string
  end

  def test_find_node_in_list
    @linked_list.append("Node 1")
    @linked_list.append("Node 2")
    @linked_list.append("Node 3")
    @linked_list.append("Node 4")
    @linked_list.append("Node 5")
    @linked_list.append("Node 6")

    string = "The Node 1 family, followed by the Node 2 family, followed by the Node 3 family, followed by the Node 4 family, followed by the Node 5 family, followed by the Node 6 family"
    assert_equal string, @linked_list.to_string

    assert "The Node 3 family", @linked_list.find(2, 1)

    assert "The Node 2 family, followed by the Node 3 family, followed by the Node 4 family", @linked_list.find(1, 3)
  end
end

# > list.find(1, 3)
# => "The Lawson family, followed by the Brooks family, followed by the Henderson family"
# > list.includes?("Brooks")
# => true
# > list.includes?("Chapman")
# => false
# > list.pop
# The Henderson family has died of dysentery
# => <Node surname="Henderson" next_node=nil #5678904567890>
# > list.pop
# The Brooks family has died of dysentery
# => <Node surname="Brooks" next_node=nil #5678904567890>
# > list.to_string
# => "The McKinney family, followed by the Lawson family"