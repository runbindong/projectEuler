# Problem 5: Smallest Multiple
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# -- Solution 1 --

# Iterations can be done without creating array
start = 100;
stop = 999;
max = 0;

# .downto is especially useful for counting functions
stop.downto(start) do |i|
	stop.downto(start) do |j|
		product = i * j

		# Converting number to string is necessary to conduct the .reverse method
		product_string = product.to_s

		# Taking care of all palindromes
		if product_string == product_string.reverse

			# Accumulating the max number for palindrome
			if product > max
				max = product
			end
		end
	end
end

puts max