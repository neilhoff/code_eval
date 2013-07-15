File.open(ARGV[0]).each_line do |line|	
	sum = 0
	line.to_s.split('').map{ |d| d.to_i}.each do |num|
		sum += num
	end
	puts sum
end