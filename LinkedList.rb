class LinkedList
  # attr_accessor :name
  def initialize
    @head = nil
    @tail = nil
  end

  def append(node)
    

  end
  
  def prepend(node)
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

  def head
  end
  
  def tail
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