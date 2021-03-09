
def caesar_cipher(string, key)
  caesar_string = ''
  alphabet = ('a'..'z')
  string.each_char do |letter|
    key.times { letter = letter.next } if alphabet.include?(letter.downcase)
    caesar_string << letter[-1]
  end
  caesar_string
end
puts 'Enter the string and the key:'
text = gets.chomp
key = Integer(gets)

puts caesar_cipher(text, key)
