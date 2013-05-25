# Problem 5: Smallest multiple
# 
# 	2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 	What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


# num represent the smallest multiple from 1..num
def smallest_multiple(num)
	(2..num).inject(1) do |mul, i|
		if mul%i == 0
			mul
		else
			(i-1).downto(2) do |j| 
				if i%j == 0
					i /= j
					break 
				end
			end
			mul *= i
		end
	end
end

def smallest_multiple(num)
	(2..num).inject(1) { |mul, i| mul *= (mul%i == 0 ? 1 : i/(1..i-1).partition { |j| i%j ==0 }.first.max) }
end

p smallest_multiple(20)
