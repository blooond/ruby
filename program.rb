
$alphabet = ('a'..'z')
$string = ''

class CaesarCipher
  def encryption(text, key)
    text.each_char do |letter|
      key.times { letter = letter.next! } if $alphabet.include?(letter.downcase)
      $string << letter[-1]
    end
    $string
  end

  def decryption(key)
    string = ''
    $string.each_char do |letter|
      (26 - key).times { letter = letter.next } if $alphabet.include?(letter.downcase)
      string << letter[-1]
    end
    string
  end
end

file = File.open('text.txt')
file_data = file.read
puts 'Enter the key for encryption and decryption:'
key = Integer(gets)
text = CaesarCipher.new
puts "Your text after encryption: #{text.encryption(file_data, key)}"
puts "Your text after decryption: #{text.decryption(key)}"
