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
    current_node = @head
    result = false
    while true
      if current_node.data == value
        result = true
      end
      if current_node.next != nil
        current_node = current_node.next
      else
        break
      end
    end
    result
  end
  
  def find(value)
  end
  
  def to_s
  end


end