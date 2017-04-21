class String
  define_method(:anagram) do
    self.downcase!()
    split = self.split()
    if split[0].chars.sort.join === split[1].chars.sort.join && split[0] === split[1].reverse()
      "Yes! They are also a palindrome"
     elsif split[0].chars.sort.join === split[1].chars.sort.join
      "These words are anagrams"
    elsif split[0].chars.sort.join === split[1].chars.sort.join
      "These words are anagrams"
    elsif !split[0][/[aeiouAEIOU]/] || !split[1][/[aeiouAEIOU]/]
      "That is not a real word!"
    else
      "These words are antigrams"
    end
  end
end





##First 5 steps
# class Array
#   define_method(:anagram) do
#     word1 = self[0]
#     word2 = self[1]
#       word1.downcase!
#       word2.downcase!
#     if word1.chars.sort.join === word2.chars.sort.join && word1 === word2.reverse()
#       "They are also a palindrome"
#     elsif word1.chars.sort.join === word2.chars.sort.join
#       "These words are anagrams"
#     elsif !word1[/[aeiouAEIOU]/] || !word2[/[aeiouAEIOU]/]
#       "That is not a real word!"
#     else
#       "These words are antigrams"
#     end
#   end
# end
