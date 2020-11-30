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
    size = 0
    current_node = @head
    loop do
      if current_node.nil?
        break
      else
        size += 1
        current_node = current_node.next
      end
    end
    size
  end
  
  def at(index)
    current_node = @head
    return nil if current_node.nil?
    
    if index > self.size
      puts "Index query greater than size of LinkedList"
      return nil
    else
      count = 0
      until current_node.nil?
        if count == index
          return current_node
        else
          count += 1
          current_node = current_node.next
        end
      end
    end
  end

  def pop
    current_node = @head
    popped_value = nil
    if self.size >= 2
      second_to_last_node = self.at(self.size - 2)
      second_to_last_node.next = nil
      popped_value = @tail
      @tail = second_to_last_node
    else
      popped_value = @tail
      @head = nil
      @tail = nil
    end
    popped_value
  end

  def contains?(value)
    current_node = @head
    result = false
    while true
      if current_node.nil?
        return false
      elsif current_node.data == value
        result = true
        break
      end
      current_node = current_node.next
    end
    result
  end
  
  def find(value)
    current_node = @head
    index = 0
    while true
      if current_node.nil?
        return -1
      elsif current_node.data == value
        return index
      else
        index += 1
        current_node = current_node.next
      end
    end
    result
  end
  
  def to_s
    current_node = @head
    loop do
      if current_node.nil?
        print "nil\n"
        break
      else
        print "( #{current_node.data} ) -> "
        if current_node.next.nil?
          print "nil\n"
          break
        else
          current_node = current_node.next
        end
      end
    end
  end

  def insert_at(value, index)
    if index == 0
      self.prepend(value)
    elsif index >= self.size
      self.append(value)
    else
      before_node = self.at(index - 1)
      old_node = self.at(index)
      new_node = Node.new(value)
  
      before_node.next = new_node
      new_node.next = old_node
    end
  end

  def remove_at(index)
    removed = nil
    if self.size == 0
      puts "This is an empty list"
      return nil
    elsif index == 0
      to_delete_node = @head
      removed = to_delete_node
      new_head = self.at(1)
      to_delete_node.next = nil
      @head = new_head
      return removed

    elsif index == self.size - 1
      return self.pop
    
    elsif index >= self.size
      puts "index greater than list size"
      return nil

    else
      to_delete_node = self.at(index)
      before_node = self.at(index - 1)
      after_node = self.at(index + 1)

      to_delete_node.next = nil
      before_node.next = after_node
      return to_delete_node
    end
  end
end