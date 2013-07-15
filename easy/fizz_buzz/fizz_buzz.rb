require 'csv'

parsed_file = CSV.read(ARGV[0], { :col_sep => " " })

parsed_file.each do |x|
	f = x[0].to_i
	b = x[1].to_i
	limit = x[2].to_i
	newline = ""

	(1..limit).each do |num|
		if num % f == 0 and num % b == 0
			newline << "FB "
		elsif num % f == 0
			newline << "F "
		elsif num % b == 0
			newline << "B "
		else
			newline << "#{num.to_s} "
		end
	end
	puts newline.strip
end