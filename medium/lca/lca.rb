class Tree
	attr_reader :tree
	def initialize
		@tree = {}
	end
	def add_level(num, l_num, r_num)
		@tree[num] = {:left=>l_num, :right=>r_num}
	end
	def ancestors(num)
		ans = []
		while true
			ans << num
			x = @tree.find { |k,v| v[:right] == num or v[:left] == num}
			if x == nil
				break
			elsif
				num = x.first
			end
		end
		ans
	end
	
	def lca(num1, num2)
		num1_ans = ancestors(num1)
		num2_ans = ancestors(num2)
		common = num1_ans & num2_ans
		common.first
	end
end
#Create the tree
tree = Tree.new
tree.add_level(30, 8, 52)
tree.add_level(8, 3, 20)
tree.add_level(20, 10, 29)

#find the lowest common ancestors 
file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	nums = line.split(" ")
	puts tree.lca(nums[0].to_i,nums[1].to_i)
end
