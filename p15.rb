# Problem 15: Lattice paths
# 
# 	Starting in the top left corner of a 22 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# 	How many such routes are there through a 2020 grid?

# def lattice_paths(height, width)
# 	return 1 if height == 0 || width == 0
# 	return height+1 if width == 1
# 	return width+1 if height == 1
# 	lattice_paths(height-1, width) + lattice_paths(height, width-1)
# end
# 
# require 'benchmark'
# Benchmark.bmbm do |results|
# 	results.report("slow") { p lattice_paths(20, 20) }
# end

# http://www.robertdickau.com/lattices.html



def lattice_paths(num)
	arr = Array.new(num+1, Array.new(num+1, 1))
	(1..num).each do |i|
		(1..num).each do |j|
			arr[i][j] = arr[i-1][j] + arr[i][j-1]
		end
	end
	arr[num][num]
end

p lattice_paths(20)
