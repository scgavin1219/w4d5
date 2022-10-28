def my_min(array) #O(n)
    min = array.first
    array.each do |ele_1|
        array.each do |ele_2|
            if ele_1 < ele_2
                min = ele_1 if min > ele_1
            end
        end
    end
    min
end

#list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#p my_min(list)  # =>  -5

def my_min_two(array) #O(n)
    min = array.first
    array[1..-1].each do |ele|
        if min > ele
            min = ele
        end
    end
    min
end

#p my_min_two(list)
#Phase 1: O(n^2)
def largest_contiguous_subsum(arr) 
    subs = []

    (0...arr.length).each do |start|
        (start...arr.length).each do |fin|
            sub = arr[start..fin]
            subs << sub 
        end 
    end 
    max = subs.shift.sum 
    subs.each do |sub|
        max = sub.sum if sub.sum > max 
    end 
    max
end 
#list = [-5, -1, -3]
#p largest_contiguous_subsum(list) 

#Phase 2: #O(n)
def largest_contiguous_subsum_two(arr)
    max, current = arr.first, arr.first

    arr[1..-1].each do |ele|
        current = 0 if current < 0
        current += ele 
        max = current if max < current
    end 
    max 
end 

list = [5, 3, -7]
p largest_contiguous_subsum_two(list) 