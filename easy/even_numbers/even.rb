file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	if line.to_i % 2 == 0
		puts 1
	else
		puts 0
	end
end