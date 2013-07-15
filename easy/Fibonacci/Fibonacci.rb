#Fibonacci Numbers
#Given f(0) = 0, f(1) = 1: f(n) = f(n-1) + f(n-2) when n > 1
fib = [0,1]
File.open(ARGV[0]).each_line do |line|	
	while fib.size <= line.to_i do 
		fib << fib[-1] + fib[-2]
	end
	puts fib[line.to_i]		
end