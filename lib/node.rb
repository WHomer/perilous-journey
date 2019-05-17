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
end