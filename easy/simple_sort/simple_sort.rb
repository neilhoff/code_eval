file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|	
	sorted = line.split(" ").map(&:to_f).sort
	output = ""
	sorted.each do |x|
		output << sprintf("%.3f", x) + " "
	end
	puts output
end