=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

# ---METHOD 1:

require 'prime'

divisors = (1..20).to_a;
factor = [];
factors = [];

divisors.each do |i|
	factor = i.prime_division
	factors.push(factor)
end

puts unique_factors = factors.uniq