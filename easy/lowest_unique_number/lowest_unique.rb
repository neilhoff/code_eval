file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	nums = line.split(" ").map(&:to_i)
	unique_nums = nums.select {|item| nums.count(item) == 1}
	min = unique_nums.min
	if min
		puts nums.index(min) + 1
	else
		puts "0"
	end
end