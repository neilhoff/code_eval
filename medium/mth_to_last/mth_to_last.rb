file = File.open(ARGV[0]).read
row = file.split("\n")
row.each_with_index do |line|
	items = line.split(" ")
	m = items.pop.to_i
	puts items[-m]
end