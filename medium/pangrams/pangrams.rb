file = File.open(ARGV[0]).read
row = file.split("\n")
row.each_with_index do |line|
	letters_needed = ""
	line = line.downcase
	('a'..'z').each do |letter|
		unless line.match(letter)
			letters_needed << letter
		end
	end
	if letters_needed == ""
		puts "NULL"
	else 
		puts letters_needed
	end
end