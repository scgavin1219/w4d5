def my_min(array)
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

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

def my_min_two(array)
    min = array.first
    array[1..-1].each do |ele|
        if min > ele
            min = ele
        end
    end
    min
end

p my_min_two(list)