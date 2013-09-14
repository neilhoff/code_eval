file = File.open(ARGV[0]).read
row = file.split("\n")
order = []
order << ""
row.each_with_index do |line, index|
	if index == 0

	else
		order.each_with_index do |x, index|
			if line.size > x.size
				order.insert(index,line)
				break
			end
		end
	end	
end
puts order[0]
puts order[1]