require_relative "my_stack"

class MinMaxStack
  def initialize
    @store = Stack.new
  end

  def peek
    @store.peek[:value] unless empty?
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

  def max
    @store.peek[:max] unless empty?
  end

  def min
    @store.peek[:min] unless empty?
  end

  def pop
    @store.pop[:value] unless empty?
  end

  def push(val)
    # By using a little extra memory, we can get the max simply by peeking,
    # which is O(1).
    @store.push({
      max: new_max(val),
      min: new_min(val),
      value: val
    })
  end

  private

  def new_max(val)
    empty? ? val : [max, val].max
  end

  def new_min(val)
    empty? ? val : [min, val].min
  end
end

# class MinMaxStack


#     def initialize
#         @store = Stack.new 
#         @min, @max = [], [] 
#     end 

#     def peek 
#         @store.last 
#     end 

#     def size 
#         @store.size
#     end 

#     def empty?
#         @store.empty?
#     end 

#     def max 
#         @max.last 
#     end 

#     def min 
#         @min.last 
#     end 

#     def push(val)
#         self.add_max(val)
#         self.add_min(val)
#         @store.push(val)
#     end 

#     def pop 
#         popped_val = @store.pop
#         self.remove_max(popped_val)
#         self.remove_min(popped_val)
#         popped_val
#     end 

#     private 
#     def add_max(val)
#         @max << val if !max || max < val 
#     end 

#     def add_min(val)
#         @min << val if !min || min > val  
#     end 

#     def remove_max(val)
#         @max.pop if val == max
#     end 

#     def remove_min(val)
#         @min.pop if vall == min 
#     end 

# end 