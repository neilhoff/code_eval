MORSE_CODE ={
	A: '.-', 	N: '-.', 	B: '-...', 	O: '---',
	C: '-.-.', 	P: '.--.', 	D: '-..',  	Q: '--.-',
	E: '.',  	R: '.-.',	F: '..-.', 	S: '...',
	G: '--.',  	T: '-',		H: '....', 	U: '..-',
	I: '..', 	V: '...-',	J: '.---', 	W: '.--',
	K: '-.-',  	X: '-..-',	L: '.-..', 	Y: '-.--',
	M: '--', 	Z: '--..', 	'0' => '-----',	'1' => '.----',	
	'2' => '..---', '3' => '...--',	'4' => '....-',	'5' => '.....',	
	'6' => '-....', '7' => '--...',	'8' => '---..',	'9' => '----.',
}

file = File.open(ARGV[0]).read
row = file.split("\n")
row.each do |line|
	code = ''
	line.split('  ').each_with_index do |word, index|
		code << ' ' if index > 0
		word.split(' ').each do |letter|
			code << MORSE_CODE.key(letter).to_s
		end		
	end
	puts code
end

