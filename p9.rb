# Problem 9: Special Pythagorean triplet
# 
# 	A Pythagorean triplet is a set of three natural numbers, a  b  c, for which, a^2 + b^2 = c^2
# 	For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 	There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# 	Find the product abc.

def special_pythagorean_triplet
	(1..999).each do |i|
		up = 1000**2 - 2000*i
		down = 2000 - 2*i
		up%down == 0 and return [i, up/down, 1000-i-up/down]
	end
end

p special_pythagorean_triplet.reduce(:*)
