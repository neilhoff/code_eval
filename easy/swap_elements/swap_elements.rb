file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	items = line.split(":")
	swaps = items[1].gsub(/\s+/, "").split(",")
	numbers = items[0].split(" ")
	swaps.each do |s|
		positions = s.split("-")
		numbers[positions[0].to_i], numbers[positions[1].to_i] = numbers[positions[1].to_i], numbers[positions[0].to_i]
	end
	puts numbers.join(" ")
end