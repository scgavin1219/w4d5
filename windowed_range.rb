=begin
 Native Approach
=end 

def windowed_max_range(arr,range)
    window = []

    (0...arr.length).each do |i| #O(n)
        (i+1...arr.length).each do |j| #O(n)
            win = arr[i..j]
            window << win if win.length == range
        end 
    end 

    max = window.first.max - window.first.min 
    window[1..-1].each do |win| #O(n)
        temp_range = win.max - win.min #O(2n) => O(n); max and min have o(n)
        if temp_range > max 
            max = temp_range
        end 
    end 
    max 
end 
#O(n^2)
p windowed_max_range([1, 0, 2, 5, 4, 8], 2) #== 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) #== 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) #== 6 # 3, 2, 5, 4, 8