File.open(ARGV[0]).each_line do |line|	

	nums = line.split(",")
	div = nums[0].to_i/nums[1].to_i
	base = div * nums[1].to_i
	mod = nums[0].to_i - base
	
	puts mod
end
