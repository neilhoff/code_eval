require 'matrix'
m_table = Matrix.build(12,12) {|row, col| row +1 * col +1}

m_table.each do |row|
	p row.inspect
end

