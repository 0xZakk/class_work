puts("How old are you?")
age = gets.chomp.to_i

if age <= 29
	puts("Wow, you are young.")
elsif age > 30
	puts("Your best years are ahead of you.")
else
	puts("This is the best year of your life.")	
end