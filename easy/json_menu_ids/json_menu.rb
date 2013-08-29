file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	js = line.gsub(/(null,)|(null)/,"")
	js = js.gsub(/:/, "=>")
	js = eval(js)
	sum = 0
	js["menu"]["items"].each do |k|
		begin
			if k["label"]
				sum += k["id"].to_i
			end
		rescue
		end
	end
	puts sum
end