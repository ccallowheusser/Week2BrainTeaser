def magic()

require 'pry'
require 'numbers_to_words'
require 'sounder'

continue = true

while continue

	good_num = false

	while !good_num

		puts "Input any positive number or type quit:"
		num = gets.strip
		if num.downcase == 'quit'
			good_num = true
			continue = false
		elsif (num == nil)
			puts "Not a valid number. Enter another."
		else
			good_num = true
			num = num.to_i
			wrd = num.to_word
		end
	end

	do_magic(num, wrd)

end
end

def do_magic(n, w)
	# puts "#{n}"
	if w.length == 4
		puts "#{n} is #{w.length} and 4 is the magic number"
	else
		puts "#{n} is #{w.length}"
		nmbr = w.length
		wrd = nmbr.to_word
		do_magic(nmbr, wrd)
	end
end

magic