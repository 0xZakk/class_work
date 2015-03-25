puts "Welcome to the Palindrome Tester"
puts "Input two words and see if they are a palindrome of eachother"
puts "First word:"
first_word = gets.chomp
puts "Second word:"
second_word = gets.chomp

if first_word.reverse == second_word
	puts "#{first_word} is a palindrome of #{second_word}!"
else
	puts "#{first_word} is not a palindrome of #{second_word}!"
end
