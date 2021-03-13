NUMBERS = 26

class CaesarCipher
  attr_writer :key, :text

  def initialize
    @encrypted_string = ''
    @decrypted_string = ''
  end

  def encryption
    @text.each_char do |letter|
      @key.times { letter = letter.next } if ('a'..'z').include?(letter.downcase)
      @encrypted_string << letter[-1]
    end
    @encrypted_string
  end

  def decryption
    @encrypted_string.each_char do |letter|
      (NUMBERS - @key).times { letter = letter.next } if ('a'..'z').include?(letter.downcase)
      @decrypted_string << letter[-1]
    end
    @decrypted_string
  end
end

string = CaesarCipher.new
puts 'Enter the key for encryption and decryption:'
string.key = Integer(gets)
string.text = File.open('text.txt').read
puts "Your text after encryption: #{string.encryption}"
puts "Your text after decryption: #{string.decryption}"
