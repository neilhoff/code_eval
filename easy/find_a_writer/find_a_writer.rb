file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	items = line.split("|")
	crypto = items[0]
	numbers = items[1].split(" ")
	writers_name = ""
	numbers.each do |x|
		writers_name << crypto[(x.to_i - 1)]
	end
	puts writers_name
end