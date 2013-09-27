=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
=end

# ---METHOD 1:

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