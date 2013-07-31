File.open(ARGV[0]).each_line do |line|	
	items = line.split(',')
	x = items[1].tr("\n","")
	size = items[0].size
	y = -1
	0.upto(size).each do |num|
		r = items[0].index(x, num)
		if r then y = r.to_i end
	end
	puts y
end
