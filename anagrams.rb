def first_anagram?(str1, str2)
    str1_perm = str1.split("").permutation.to_a
    str1_combos = str1_perm.map { |ele| ele.join("") }
    str1_combos.include?(str2)
end
# O(n!)
#p first_anagram?("rac", "car")

def second_anagram?(str1, str2)
    str1.chars.each do |char| #O(n)
        if str2.include?(char) #O(n)
            idx = str2.index(char) #O(n)
            str2.slice!(idx) #O(n)
        end
    end
    str2.empty?
end

#eq = n * 3n => 3n^2 => O(n^2)
#p second_anagram?("car", "rac")

def third_anagram?(str1,str2)
    sort_1 = str1.split('').sort! #log n to spliting into invidual arrays then n to recombine it => O(n log n)
    sort_2 = str2.split('').sort! 
    sort_1 == sort_2
end 

#O(n log n)
    #quicksort worse case can be O(n^2) if sorted in descending order 
#p third_anagram?("elvis", "lives")

def fourth_anagram?(str1,str2)
    hash = Hash.new(0)
    str1.chars.each do |char| #O(n)
        hash[char] += 1
    end 

    str2.chars.each do |char| #O(m)
        hash[char] -= 1
    end 

    hash.values.all? {|val| val.zero?} #O(2n)
end 

# n + m + 2n => O(n + m) || O(n)
p fourth_anagram?("elvis", "lives")