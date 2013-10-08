file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	items = line.split(",")
	str = items[0]
	chars = items[1].strip
	new_str = str.gsub(/[#{chars}]/,"")
	puts new_str
end