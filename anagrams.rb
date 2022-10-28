def first_anagram?(str1, str2)
    str1_perm = str1.split("").permutation.to_a
    str1_combos = str1_perm.map { |ele| ele.join("") }
    str1_combos.include?(str2)
end
# O(n!)
#p first_anagram?("rac", "car")

def second_anagram?(str1, str2)
    str1.chars.each do |char|
        if str2.include?(char)
            str2.delete!(char)
        end
    end
    str2.empty?
end

p second_anagram?("car", "rac")