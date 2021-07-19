def substrings(string, dictionary)
  
  result = Hash.new

  dictionary.each do |word|
    result[word] = string.downcase.scan(word).length if string.downcase.include?(word)
  end

  result
end

dictionary = [
  "below","down","go","going","horn","how","howdy",
  "it","i","low","own","part","partner","sit"
]

puts substrings("below", dictionary)
puts ""
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
