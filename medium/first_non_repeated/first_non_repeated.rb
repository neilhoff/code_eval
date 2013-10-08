file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	line.each_char do |c|
		c_num = line.count c
		if c_num == 1
			puts c
			break
		end
	end
end