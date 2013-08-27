file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	coords = line.gsub(/(\(|\)|,)/,"").split(" ")
	x1, y1, x2, y2 = coords[0].to_i, coords[1].to_i, coords[2].to_i, coords[3].to_i
	puts Math.sqrt((x2-x1)**2+(y2-y1)**2).to_i
end