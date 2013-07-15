require 'prime'

def reverse_int(num)
	num.to_s.reverse!.to_i
end

prime_palindromes = []
Prime.each(1000) do |p|
	if p == reverse_int(p)
		prime_palindromes << p
	end
end

puts prime_palindromes.last