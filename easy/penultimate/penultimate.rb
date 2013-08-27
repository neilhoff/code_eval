file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	words = line.split(" ")
	puts words[-2]
end