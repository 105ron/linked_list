require_relative 'node.rb'
class LinkedList
  

  attr_accessor :head


  def initialize(val)
    # Initialize a new node at the head
    @head = Node.new(val,nil)
  end
  

  def append(value)
    # adds a new node to the end of the list
    current = @head
    while current.next_node != nil
      current = current.next_node
    end 
    current.next_node = Node.new(value,nil)
    puts current.next_node
  end


  def prepend(value)
  	# adds a new node to the start of the list
  	current = @head
  	@head = Node.new(value, current)
  end


  def size
  	# returns the total number of nodes in the list
  	current = @head
  	nodes = 1 # start at 1 because we are starting with head node
    while current.next_node != nil
      current = current.next_node
      nodes += 1
    end 
    return nodes
  end


  def head
    # returns the first node in the list
  	return @head.value, @head.next_node
  end


  def tail
  	# returns the last node in the list
  	current = @head
    while current.next_node != nil
      current = current.next_node
    end 
   return current
  end


  def at(index)
    # returns the node at the given index
  	iterator = 0
  	current = @head
  	while iterator < (index -1)
  	  iterator += 1
  	  current = current.next_node
  	end
  	current.value
  end


  def pop
    # removes the last element from the list
  	previous = @head
  	current = @head.next_node
    while current.next_node != nil #work our way to the tail
      previous = previous.next_node
      current = current.next_node
    end
    current.value = nil
    previous.next_node = nil
    return self
  end

  
  def contains?(search_item)
    # returns true if the passed in value is in the list and otherwise returns false.
    current = @head
    while current.next_node != nil
      if current.value == search_item
        return true
      end
      current = current.next_node
    end
    if current.value == search_item #check the last node before we return false
      return true
    else
      return false
    end
  end


  def find(data)
    # returns the index of the node containing data, or nil if not found.
    current = @head
    iterator = 0 #first node is node 0
    while current.next_node != nil
      if current.value == data
        return "#{data} is at node #{iterator}"
      end
      current = current.next_node
      iterator += 1
    end
    if current.value == data
      return "#{data} is at node #{iterator}"
    end
    return "#{data} not found in any node"
  end


  def to_s(current = @head, string = "")
    if current.next_node == nil
      string = "#{string} #{current.value} -> "
      return string[0..-5] 
    end
    string = "#{string} #{current.value} -> "
    current = current.next_node
    to_s(current, string)
  end


end

