require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      @head.append(data)
    end
  end

  def count
    if @head.nil? 
       return 0
    else
      @head.count(0)
    end
  end

  def to_string
    string = "The #{@head.surname} family"
    if @head.nil?
      return string
    else
      @head.to_string(string)
    end
  end

  def prepend(data)
    if @head.nil? 
      @head = Node.new(data)
    else
      node = Node.new(data)
      node.next_node = @head
      @head = node
    end
  end 

  def insert(depth, data)
    if @head.nil? 
      @head = Node.new(data)
    else
      i = 1
      node = @head
      while i < depth do
        node = node.next_node
        i += 1
      end
      new_node = Node.new(data)
      new_node.next_node = node.next_node
      node.next_node = new_node
    end
  end

  def find(depth, length)
    i = 0
    node = @head
    while i < depth do
      node = node.next_node
      i += 1
    end
    string = "The #{node.surname} family"
    i = 1
    while i < length
      node.next_node.to_string(string) if node.next_node
      i += 1
    end
  end
end