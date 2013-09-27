=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
=end

# Identify all natural numbers under 1000 and select the numbers that are multiples of 3 and 5.
targets = (1..999).select { |a| a%3 == 0 || a%5 == 0 }

# Displays the array of multiples and sums up the individual elements of the array via 'inject' method.

# Method 1:
# puts targets.inject { |sum, n| sum + n }

# Method 2:
puts targets.reduce(:+)