file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	words = line.split(";")
	number = ""
	words.each do |word|
		case word
		when "zero"
			number << "0"
		when "one"
			number << "1"
		when "two"
			number << "2"
		when "three"
			number << "3"
		when "four"
			number << "4"
		when "five"
			number << "5"
		when "six"
			number << "6"
		when "seven"
			number << "7"
		when "eight"
			number << "8"
		when "nine"
			number << "9"
		end
	end
	puts number
end

