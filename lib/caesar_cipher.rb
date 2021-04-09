def caesar word, shift_number
  alphabet = ("a".."z").to_a
  caesar_word = ''
  up = false

  word = word.split("")

  word.each do |letter|
    if letter == letter.upcase
      up = true
      letter = letter.downcase
    end

    if alphabet.include?(letter)
      alpha_index = alphabet.index(letter)
      shifted_index = (alpha_index + shift_number) % 26
      shifted_alpha = alphabet[shifted_index]
    else
      shifted_alpha = letter #if it's not in the alphabet, leave as is.
    end

    if up == true
      shifted_alpha = shifted_alpha.upcase
      up = false
    end

    caesar_word = caesar_word + shifted_alpha
  end

  word = word.join('')
  caesar_word
  # puts "'#{word}' becomes: '#{caesar_word}'"
end

puts "Enter a string:"
word = gets.chomp
puts "Enter a number"
shift_number = gets.chomp.to_i

puts "#{word} becomes: #{caesar word, shift_number}"
