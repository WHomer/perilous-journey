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
end