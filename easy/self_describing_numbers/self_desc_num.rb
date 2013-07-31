file = File.open(ARGV[0]).read
file_arr = file.split("\n")
file_arr.each do |line|	
	sd_num = 1
	index = 0
	line.each_char do |c|
		count = line.count index.to_s
		if count == c.to_i
			sd_num = 1
		else
			sd_num = 0
		end
		index +=1
	end
	puts sd_num
end