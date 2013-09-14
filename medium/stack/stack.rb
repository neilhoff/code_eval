class Stack
	include Enumerable
	def initialize
		@nums = []
	end
	
	def push(num)
		@nums << num
	end
	
	def pop(index)
		@nums.delete_at(index)
	end
	
	def size
		@nums.size
	end
	
	def each(&block)
        @nums.each(&block)
    end
end

file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	numbers = line.split(" ")
	stack = Stack.new
	numbers.each do |num|
		stack.push(num)
	end
	last_item = stack.size - (2*stack.size)
	count = -1
	popped = ""
	while count >= last_item
		num = stack.pop(count)
		if num 
			unless count == -1
				popped << " "
			end
			popped <<  num	
		end
		count -= 1
	end
	puts popped	
end



