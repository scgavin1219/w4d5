require_relative "my_stack.rb"

class StackQueue #< Stack 
    def initialize
        @in_stack = Stack.new 
        @out_stack = Stack.new 
    end 


    def size 
        @in_stack.size + @out_stack.size 
    end 

    def empty?
        @in_stack.empty? && @out_stack.empty?
    end 

    def enqueue(val)
        @in_stack.push(val)
    end 

    def dequeue
        queueify if @out_stack.empty?
        @out_stack.pop 
    end 

    private
    def queueify 
        #turned stack into queue by flipping it 
        @out_stack.push(@in_stack.pop) until @in_stack.empty?
    end 
end 