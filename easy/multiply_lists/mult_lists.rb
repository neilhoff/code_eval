file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	lists = line.split("|")
	list1 = lists[0].split(" ")
	list2 = lists[1].split(" ")
	mults = []
	list1.each_with_index do |num, index|
		mults << num.to_i * list2[index].to_i
	end
	puts mults.to_s.gsub(/("|\[|\]|,)/,"")
end