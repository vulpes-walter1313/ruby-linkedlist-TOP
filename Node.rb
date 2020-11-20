class Node
  attr_accessor :next, :data
  def initialize(value)
    @data = value
    @next = nil
  end
end