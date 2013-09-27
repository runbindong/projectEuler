=begin
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
=end

# ---METHOD 1:

# Prime library provides factorization methods

require 'prime'

puts 600851475143.prime_division.max.max