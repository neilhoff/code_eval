file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|	
	clean_line = line.downcase.tr('^a-z', '');
	sorted = clean_line.chars.sort
	b = Hash.new(0)
	sorted.each do |v|
	  b[v] += 1
	end
	total = 0
	pts = 26
	b.sort_by{|k,v| v}.reverse.each do |k, v|
	  total += pts * v
	  pts -= 1
	end
	puts total
end