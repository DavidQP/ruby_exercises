

def caesar_cipher(string, key)
  text = string.split('')
  alphabet = Array('a'..'z')
  cipher_text = text.map do |letter|
    downcase_letter = letter.downcase
    current_position = alphabet.index(downcase_letter)
    if current_position.nil?
      letter
    else
      new_position = (current_position + key) % 26
      transformer_letter = alphabet[new_position]
      letter == downcase_letter ? transformer_letter : transformer_letter.upcase
    end
  end
  cipher_text.join
end

p caesar_cipher("What a string!", 5)

