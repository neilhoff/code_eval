require 'matrix'
Matrix.class_eval { public :[]= }
m = Matrix.zero(256)
file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	items = line.split(" ")
	command = items[0]
	a = items[1].to_i
	x = items[2].to_i
	case command
	when "SetRow"
		0.upto(255) do |num|
			m[a,num] = x
		end
	when "SetCol"
		0.upto(255) do |num|
			m[num,a] = x
		end		
	when "QueryRow"
		sum = 0
		0.upto(255) do |num|
			sum += m[a,num]
		end
		puts sum
	when "QueryCol"
		sum = 0
		0.upto(255) do |num|
			sum += m[num,a]
		end
		puts sum
	end
end
