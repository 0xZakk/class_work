puts("How many picces of pizza can you eat?")
pizza_slice_count = gets.chomp.to_i

case pizza_slice_count
when 0
	puts("Oh, you must not like pizza.")
when 1
	puts("Oh, you must not be very hungry")
when 2
	puts("2 pieces, eh?")
when 3
	puts "That's a good amount of pizza"
else 
	puts "We're going to have to order more pizza"
end


