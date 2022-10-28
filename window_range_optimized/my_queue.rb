class MyQueue
    
    def initialize
        @store = []
    end

    def equeue(ele)
        @store.push(ele)
    end

    def dequeue
        @store.shift
    end

    def peek
        @store[0]
    end

    def size
        @store.length
    end

    def empty?
        @store.empty? 
    end

end