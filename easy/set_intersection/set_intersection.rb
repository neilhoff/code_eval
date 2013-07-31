File.open(ARGV[0]).each_line do |line|	
	lists = line.split(';')
	intersection = lists[0].split(',') & lists[1].split(',')
	puts intersection.join(',')
end