require 'digest'

puts 'Введите слово или фразу для шифрования:'
phrase = gets.chomp

puts 'Каким способом зашифровать:'
puts '1. MD5'
puts '2. SHA1'
puts '3. SHA2'
choice = gets.chomp

case choice
when '1'
  md5 = Digest::MD5.hexdigest(phrase)
  puts "Шифрование с md5: #{md5}"
when '2'
  sha1 = Digest::SHA1.hexdigest(phrase)
  puts "Шифрование с sha1: #{sha1}"
when '3'
  sha2 = Digest::SHA2.hexdigest(phrase)
  puts "Шифрование с sha2: #{sha2}"
else
  puts 'Вы ввели неверные данные!'
end
