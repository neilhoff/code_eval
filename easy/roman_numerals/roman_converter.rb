roman = %w[M     CM   D    CD   C    XC  L   XL  X   IX V  IV I]
numbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
ROMAN_NUMERALS = numbers.zip roman

file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	number = line.to_i
	roman = ""
    ROMAN_NUMERALS.each do |value, letter|
	  roman << letter*(number / value)
      number = number % value
	end
	puts roman
end
