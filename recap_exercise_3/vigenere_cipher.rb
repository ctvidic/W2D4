def vigenere_cipher(string, array)
        alphabet = ("a".."z").to_a
        new_str = ""
        num = 0
        string.each_char do |char|
          old_idx = alphabet.index(char)
          new_idx = old_idx + array[num%array.length]
          num += 1
          new_char = alphabet[new_idx % 26]
          new_str += new_char
        end
      
        return new_str
end




# Examples
p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
p vigenere_cipher("yawn", [5, 1])             # => "dbbo"