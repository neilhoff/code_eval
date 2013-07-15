require 'prime'

sum = 0
p_nums = Prime.first 1000 

p_nums.each do |p|
	sum += p
end

puts sum