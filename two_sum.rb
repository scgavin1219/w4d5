def two_sum?(array, target)
    array.each_with_index do |ele_1, idx_1|
        array[idx_1 + 1..-1].each do |ele_2|
            return true if ele_1 + ele_2 == target
        end
    end
    false
end
# O(n^2)
# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false


def okay_two_sum?(array, target)
    array.sort! #O(n log n )
    array.each_with_index do |ele, i| #O(n)
        temp = array[0...i] + array[i + 1..-1]
        return true if temp.bsearch { |num| num == target - ele } #O(log n)
    end
    false
end
# O(n log n)
arr1 = [7, 5, 1, 0]
p okay_two_sum?(arr1, 6) # => should be true
p okay_two_sum?(arr1, 10) # => should be false

