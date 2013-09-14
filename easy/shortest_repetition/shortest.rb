file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	first_letter = line[0]
	size = line.size-1
	rep = line[0]
	letter = ""
	1.upto(size) do |num|
		letter = line[num]
		break if letter == first_letter
		rep << letter
	end
	puts rep.size
end