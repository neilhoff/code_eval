file = File.open(ARGV[0]).read
row = file.split("\n")
row.each_with_index do |line|
	cycles = line.match(/(.+ .+)( \1)+/)
	if cycles
		puts cycles[1]
	end
end
