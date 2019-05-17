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
end


# > list.to_string
# => "The West family"
