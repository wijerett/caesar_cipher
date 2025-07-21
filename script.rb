

alphabet = {
  "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9,
  "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17,
  "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26
}

puts input = "Enter string: "
input = gets.chomp.downcase

puts input1 = "Enter a key: "
input1 = gets.chomp.to_i

key = key.to_i

numbers = input.chars.map do |char|
  alphabet[char]
end.compact

new_number = numbers.map.each { |num| num + input1 }
#p new_number
wrapped_number = new_number.map do |n|
  n > 26 ? ((n - 1) % 26) + 1 : n
end

caesar = wrapped_number.map do |str|
  key = alphabet.key(str)
  key ? key.to_s : "nil"
end

puts caesar.join(" ")