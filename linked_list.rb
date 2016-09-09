require_relative 'node.rb'
class LinkedList

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
  	#adds a new node to the start of the list
  	current = @head
  	@head = Node.new(value, current)
  end


  def size
  	#returns the total number of nodes in the list
  	current = @head
  	nodes = 1 # start at 1 because we are starting with head node
    while current.next_node != nil
      current = current.next_node
      nodes += 1
    end 
    return nodes
  end


  def head
  	return @head.value, @head.next_node
  end


  def tail
  	#returns the last node in the list
  	current = @head
    while current.next_node != nil
      current = current.next_node
    end 
   return current
  end

  
  def at(index)
  	iterator = 0
  	current = @head
  	while iterator < index
  	  iterator += 1
  	  current = current.next_node
  	end
  	current.value
  end

end

