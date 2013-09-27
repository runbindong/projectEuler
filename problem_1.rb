# Problem 1: Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# -- Solution 1 --

# Populate array of natural numbers under 1000.
num_arr = (1..999).to_a;

# Selecting all multiples of 3 and 5
num_multiple = num_arr.select { |x| x%3==0 || x%5==0 }

# Sum of those multiples
puts num_sum = num_multiple.reduce(:+)
