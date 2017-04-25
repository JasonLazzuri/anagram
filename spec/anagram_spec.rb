require('rspec')
require('anagram')

describe('String#anagram') do
  it('it will check if a word has vowels') do
    expect("xmtn xmtl".anagram).to(eq("That is not a real word!"))
  end

  it('checks if words are anagrams or not') do
    expect("ruby bury".anagram).to(eq("These words are anagrams"))
  end

  it('if a word has a capitalized letter it will check for that') do
    expect("Ruby Bury".anagram).to(eq("These words are anagrams"))
  end

  it('if a word is an anagram it will also check whether or not they are palindromes') do
    expect("racecar racecar".anagram).to(eq("Yes! They are also a palindrome"))
  end

  it('it will check if the words are antigrams') do
    expect("hi bye".anagram).to(eq("These words have no letter matches and are antigrams."))
  end
  it('it will check if multiple words are anagrams') do
    expect("Ruby Bury".anagram).to(eq("These words are anagrams"))
  end
  it('if a word isnt any of them') do
    expect("racecar raceca".anagram).to(eq("this isnt a palindrome, anagram or antigram!"))
  end
end

#    elsif vowels.include? || vowels.include?
#     "That is not a real word!"
#   end
# end
# end
