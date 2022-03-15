# frozen_string_literal: false

require_relative 'caesar_cipher'

cs = CaesarCipher.new

puts cs.transform('CAT!', 5)
puts cs.transform('What a string!', 5)
puts cs.transform('computer', 7)
puts cs.transform('z', 8)
puts cs.transform('Z', 9)

# A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

# I'm a phrase 3
# L'p d skudvh
# I'm a phrase -3
# F'j x meoxpb
