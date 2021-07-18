require 'pry-byebug'
def transform(string, key)
  string.chars.map do |char|

    char = char.ord
    
    ascii_start = char < 97 ? 65 : 97
    
    if char.between?(65, 90) || char.between?(97, 122)
      char = (((char - ascii_start) + key) % 26) + ascii_start
    end
    char.chr
  end.join
  
end

puts transform("CAT!", 5)
puts transform("What a string!", 5)
puts transform("computer", 7)
puts transform("z", 8)
puts transform("Z", 9)