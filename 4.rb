# PROBLEM 4

def palindrome?(n)
  (n = n.to_s)[0..(n.size/2)] == n.reverse[0..(n.size/2)]
end

puts (900..999).to_a.combination(2).map { |pair| pair.inject :* }.select { |n| palindrome? n }.max
