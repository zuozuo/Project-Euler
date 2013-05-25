# Problem 6: Sum square difference
# 
# 	The sum of the squares of the first ten natural numbers is:  12 + 22 + ... + 102 = 385
# 	The square of the sum of the first ten natural numbers is:  (1 + 2 + ... + 10)2 = 552 = 3025
# 	Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
# 	Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_difference(num)
	(1..num).reduce(:+)**2 - (1..num).to_a.map{|i|i*i}.reduce(:+)
end

def sum_square_difference1(num)
	a = (1..100).inject([0,0]) { |r,n| [r[0]+n, r[1]+n**2] }
	a[0]**2 - a[1]
end



p sum_square_difference(10)
p sum_square_difference(100)
p sum_square_difference1(100)
