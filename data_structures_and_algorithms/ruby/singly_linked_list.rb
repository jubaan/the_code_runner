class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
  end
end

class LinkedList
  attr_accessor :head, :tail, :length

  def initialize(head = nil, tail = nil, length = 0)
    @head = head
    @tail = tail
    @length = length
  end

  def insert(data)
    node = Node.new(data)
    unless head
      @head = node
    else
      @tail.next = node
    end
    @tail = node
    length += 1
  end
end
