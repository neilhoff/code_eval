
File.open(ARGV[0]).each_line do |line|
	unless /\S/ !~ line
		words = line.split(" ")
		puts words.reverse.to_s.gsub(",", "").gsub("\"", "").gsub("[", "").gsub("]", "")
	end
end