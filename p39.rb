# Problem 39: Integer right triangles

# 	If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.
# 	{20,48,52}, {24,45,51}, {30,40,50}
# 	For which value of p  1000, is the number of solutions maximised?

def integer_right_triangles(num)
	{}.tap do |hash|
		1.upto(num) do |a|
			1.upto(num) do |b|
				c = Math.sqrt(a*a + b*b)
				s = a+b+c
				c == c.to_i && s <= 1000 and hash.merge!(s => hash[s].to_i+1)
			end
		end
	end.sort_by {|k, v| v}.last.first.to_i
end

p integer_right_triangles(1000)
