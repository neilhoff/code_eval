def convert_digit_to_dec(hex)
	if hex == "a"
		return 10
	elsif hex == "b"
		return 11
	elsif hex == "c"
		return 12
	elsif hex == "d"
		return 13
	elsif hex == "e"
		return 14
	elsif hex == "f"
		return 15
	else
		return hex.to_i
	end
end
file = File.open(ARGV[0]).read
line = file.split("\n")	
line.each do |hex|
	hex.reverse!
	count =  hex.size - 1
	decimal = 0
	while count >= 0
		decimal += convert_digit_to_dec(hex[count])* 16**count
		count -= 1
	end
	puts decimal
end

