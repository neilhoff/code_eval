File.open(ARGV[0]).each_line do |line|	
	bag = line.gsub("\n","").split(',')
	set = bag.uniq
	puts set.join(',')
end