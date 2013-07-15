File.open(ARGV[0]).each_line do |line|	
	nums = line.split(",")
	num = nums[0].to_i
	pos1 = nums[1].to_i - 1
	pos2 = nums[2].to_i - 1
	
	puts (num >> pos1) & 1 == (num >> pos2) & 1

end