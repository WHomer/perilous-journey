class Node
  attr_reader :surname,
              :next_node

  def initialize(name)
    @surname = name
    @next_node = nil
  end

  def count(num)
    num += 1
    if @next_node.nil?
      return num
    else
      @next_node.count(num)
    end
  end

  def append(data)
    if @next_node.nil?
      @next_node = Node.new(data)
    else
      @next_node.append(data)
    end
  end

  def to_string(string)
    if @next_node.nil?
      return string
    else
      string += ", followed by the #{@next_node.surname} family"
      @next_node.to_string(string)
    end
      
  end
end