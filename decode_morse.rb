# decode_morse.rb
# ruby "/Users/andrea/Desktop/Microverse/Module 4/morse-code/decode_morse.rb"

def decode_a_char(char)
  decodemessage = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
                    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K',
                    '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q',
                    '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
                    '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
  decodemessage[char]
end

def decode_word(word)
  decoded_string = word.split
  decoded_word = ''
  decoded_string.each do |n|
    decoded_word += decode_a_char(n)
  end
  decoded_word
end

def decode_message(dec_word)
  decoded_string = dec_word.split('   ')
  decoded_phrase = ''
  decoded_string.each do |n|
    decoded_phrase += " #{decode_word(n)}"
  end
  decoded_phrase
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
