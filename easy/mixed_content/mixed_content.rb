file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	items = line.split(",")
	letters = []
	integers = []
	items.each do |item|
		if item.match(/[^[:digit:]]+/)
			letters << item
		else
			integers << item
		end
	end
	if letters.size > 0 and integers.size > 0
		spacer = "|"
	else
		spacer = ""
	end
	puts letters.to_s.gsub(/("|\[|\]| )/,"") + spacer + integers.to_s.gsub(/("|\[|\]| )/,"")
end