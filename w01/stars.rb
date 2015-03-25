# # Define the method
# def pyramid(number_of_rows, item_in_rows)
# 	i = 0
# 	while i <= number_of_rows
# 		#set the row width
# 		width = 2 * i + 1
# 		#set the max width
# 		max_width = 2 * number_of_rows + 1
# 		#set the line
# 		line = item_in_rows * width
# 		#puts line, centered based on max width
# 		puts line.center(max_width, " ")
# 		#increment
# 		i += 1
# 	end
# end

# puts "Welcome to the pyramid maker"
# puts "How many rows do you want?"
# rows = gets.chomp.to_i

# puts "What would you like the pyramid to be made of?"
# content = gets.chomp.to_s

# pyramid(rows, content)

def pyramid(number)
	i = 0
	while i <= number
		width = 2 * i + 1
		max_width = 2 * number + 1
		line = "*" * width
		puts line
		puts line.center(max_width, " ")
		i +=1
	end
end

pyramid(5)









