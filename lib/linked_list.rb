require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
  end

  def count
    if @head.nil? 
       return 0
    else
      @head.count(0)
    end
  end

  def to_string
    "The #{@head.surname} family"
  end
end