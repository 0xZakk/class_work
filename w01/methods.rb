def welcome(other_name, my_name)
	puts "Hello, #{other_name}, I'm #{my_name}"
end

instructor1 = "matt"
instructor2 = "andy"
welcome(instructor1, instructor2)

puts "instructor1 now #{instructor1}"
puts "instructor1 now #{instructor2}"

# return_val = welcome()
# puts "The return value was #{return_val}!"

# def calculate_square(number)
# 	return number * number
# end

# puts "What number would you like squared?"
# square = gets.chomp.to_i

# puts calculate_square(square)