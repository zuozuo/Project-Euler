# 21944
# 21124
# Problem 17: Number letter counts

# 	If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 	If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# 	NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. 
# 	The use of "and" when writing out numbers is in compliance with British usage.

H = {
	0 => "", 
	1 =>  'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 
	11 =>  'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 
	10 =>  'ten', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety', 100 => 'onehundred', 
	1000 => 'onethousand'
}

def transfer(num)
	(1..num).map do |n|
		if H[n]
			H[n]
		else
			div, mod = n.divmod(100)
			if mod == 0
				H[div] + 'hundred'
			elsif H[mod]
				H[div] + 'hundredand' + H[mod]
			else
				div1, mod1 = mod.to_i.divmod(10)
				s = div == 0 ? "" : H[div] + 'hundredand'
				s + H["#{div1}0".to_i] + H[mod1]
			end
		end
	end.join.length
end

p transfer(1000)
