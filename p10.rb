# Problem 10: Summation of primes
 
# 	The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 	Find the sum of all the primes below two million.

def summation_of_primes_below(n)
	[].tap do |primes|
		(2..n).each do |i|
			is_prime?(i, primes) and primes << i
		end
	end.reduce(:+)
end

def is_prime?(n, primes)
	primes.each do |prime|
		n%prime == 0 and return false
		prime > Math.sqrt(n) and return true
	end
end

# def is_prime?(n)
# 	n !=2 && n%2 == 0 and return false
# 	3.step(Math.sqrt(n).to_i, 2) {|i| n%i == 0 and return false}
# 	true
# end

p summation_of_primes_below(2000000)
