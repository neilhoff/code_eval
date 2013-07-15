require 'matrix'
m_table = Matrix.build(12,12) {|row, col| (row+1) * (col+1)}

count=0
table = ""
m_table.each do |num|
	if count < 11
		table << "#{num}".rjust(4)
		count +=1
	else
		table << "#{num}".rjust(4) + "\n"
		count = 0
	end
end

puts table