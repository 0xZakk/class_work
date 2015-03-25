def sum_of_multiples_3_or_5(number_from_user)
	puts "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23."
	puts "Please provide a number:"
	number_from_user = gets.chomp.to_i

	array_of_multiples = []

	i = 0
	while i <= number_from_user
		if i % 3 == 0 || i % 5 == 0
			array_of_multiples.pop(i)
			i += 1
		else
			i +=1
		end
	end

	
end



