file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	puts line.swapcase
	
end