file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	puts line.to_i.to_s(2).count "1"
end