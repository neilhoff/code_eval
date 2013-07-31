File.open(ARGV[0]).each_line do |line|	
	h_num = 0
	line.each_char do |c|
		h_num += c.to_i * c.to_i
	end		
	begin
		next_h_num = 0
		h_num.to_s.each_char do |c|
			next_h_num += c.to_i * c.to_i
		end
		h_num = next_h_num
		if h_num == 1
			puts 1
		elsif h_num == 4
			puts 0
		end
	end while h_num !=1 and h_num !=4
	
end