# frozen_string_literal: false

# class for Caesar Cipher
class CaesarCipher
  def transform(string, key)
    string.chars.map do |char|
      char = char.ord

      ascii_start = char < 97 ? 65 : 97

      char = (((char - ascii_start) + key) % 26) + ascii_start if char.between?(65, 90) || char.between?(97, 122)
      char.chr
    end.join
  end
end
