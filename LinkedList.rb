require_relative 'Node.rb'
class LinkedList
  # attr_accessor :name
  attr_reader :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)
    if @tail.nil?
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end
  
  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next = @head
      @head = node
    end
  end
  
  def size
  end
  
  def at(index)
  end

  def pop
  end
  
  def contains?(value)
  end
  
  def find(value)
  end
  
  def to_s
  end


end