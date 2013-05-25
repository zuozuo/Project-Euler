# Problem 7: 10001st prime

# 	By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 	What is the 10 001st prime number?

def nst_prime(n)
	i , count = 1, 0
	loop do
		i += 1
		count += 1 if is_prime?(i)
		count == n and return i
	end
end

def is_prime?(n)
	n !=2 && n%2 == 0 and return false
	3.step(Math.sqrt(n).to_i, 2) {|i| n%i == 0 and return false}
	true
end

require 'benchmark'
Benchmark.bmbm do |results|
	results.report("sss") { nst_prime(10001) }
end
