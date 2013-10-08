file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	longest_word = ""
	words = line.split(" ")
	words.each do |word|
		if longest_word.size < word.size
			longest_word = word
		end
	end
	puts longest_word
end