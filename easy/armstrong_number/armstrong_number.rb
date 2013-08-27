file = File.open(ARGV[0]).read
line = file.split("\n")	

line.each do |num|
	total = 0
	size = num.size
	num.each_char do |c|
		total += c.to_i ** size
	end
	if total == num.to_i
		puts "True"
	else
		puts "False"
	end
end