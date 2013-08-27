file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	words = line.split(" ")
	str = ""
	words.each {|w| str << w.sub(/^(\w)/) {|s| s.capitalize}+ " "}
	puts str
	
end