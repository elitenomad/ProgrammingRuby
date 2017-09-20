class Node
  def initialize(data, next_node=nil)
    @data = data
    @next = next_node
  end

  attr_accessor :data
  attr_accessor :next
end

class List
  include Enumerable

  attr_accessor :head

  def each
    item = @head
    while(item.next != nil)
      yield item
      item = item.next
    end
  end

  def insert(data)
    @head = Node.new(data,head)
  end

  def find_value(value)
     find { |item| item.data == value }
  end


  def remove(target)
    #check if the target is a head. If it is just replace t
    # the head
    @head = @head.next if target == @head

    # if the target is not head try to find out the element
    # equal to the target and replace the next element of it
    # with targets next element
    prev = find {|item| item.next == target }

    prev.next = prev.next.next if prev
  end
end

class CircularList
  include Enumerable

  attr_accessor :head

  def each
    item = @head
    while(item)
      yield item
      item = item.next
      break if item == @head
    end
  end
end