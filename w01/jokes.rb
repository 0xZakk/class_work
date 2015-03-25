def tell_joke(joke_to_tell, answer_to_joke)
	puts(joke_to_tell)
	user_input = gets.strip

	if user_input == answer_to_joke
		puts "Correct response!!"
		return true
	else
		puts "You didn't get it!"
		return false
	end
end

# tell_joke("What does a nudist wear to work?", "A birthday suit")

def tell_two_jokes(joke1, answer1, joke2, answer2)
	joke_one_correct = tell_joke(joke1, answer1)
	joke_two_correct = tell_joke(joke2, answer2)

	return (joke_one_correct && joke_two_correct)
end

tell_two_jokes("Why did the duck cross the road?", "To get to the other side", "Two guys walk into a bar", "ouch")