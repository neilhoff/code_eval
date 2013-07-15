File.open(ARGV[0]).each_line do |line|
	nums = line.split(",")
	multiple = 0
	count = 1
	until nums[0].to_i < multiple do
		multiple = nums[1].to_i * count
		count += 1
	end
	puts multiple
end
