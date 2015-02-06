# PROBLEM 22

ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

names = eval("[" + File.open("22_names.txt", "r") { |file| file.read } + "]")

def alph_value(word)
  word.chars.map { |ch| ALPHABET.index(ch) + 1 }
end

puts "#{names.sort.each_with_index.map do |name, idx|
  (idx + 1) * alph_value(name).inject(:+)
end.inject(:+)}"
