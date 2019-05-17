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
end