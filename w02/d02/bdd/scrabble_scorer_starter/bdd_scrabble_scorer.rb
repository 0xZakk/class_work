# Scrabble Scorer
#
# Your team has recently become enamored with Scrabble(c).
# So much so that you feel you must add a Scrabble Scorer
# to your amaCo PDA.

# One of your teammates has create a series of specifications
# which indicate how to score a game.
# She has also created a file with everything you need to start (this file).
# Sweeeet.
# In keeping with our "small steps" paradigm, we will just create
# a method to satisfy the specs.
# You figure you can add it to your amaCo PDA later
# As your budies say, "in your copious spare time".

# Your assignment:
# - Populate the method `scrabble_scorer` to satisfy these specs.
# - You will *only* add code within `def scrabble_scorer`.
# - Try to only write the minimal amount of code to make tests pass.
# - As you get each spec to pass, uncomment another spec.

# Important Help:
# This file has the code and the specs together.
# You can run the specs using
#    $ rspec
# or
#    $ rspec bdd_scrabble_scorer_starter_spec.rb

# Run the scorer, using:
#    $ ruby bdd_scrabble_scorer_starter.rb any_word
#  e.g.:
#    $ ruby bdd_scrabble_scorer_starter.rb street #=> 6

# Scrabble(c) Letter Scores:
# A: 1
# B: 3
# C: 3
# D: 2
# E: 1
# F: 4
# G: 2
# H: 4
# I: 1
# J: 8
# K: 5
# L: 1
# M: 3
# N: 1
# O: 1
# P: 3
# Q:10
# R: 1
# S: 1
# T: 1
# U: 1
# V: 4
# W: 4
# X: 8
# Y: 4
# Z:10

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# Our code goes here:

# Returns the Scrabble Score for passed word.

def scrabble_scorer(word)
letter_scores = {
	"a" => 1,
	"b" => 3,
	"c" => 3,
	"d" => 2,
	"e" => 1,
	"f" => 4,
	"g" => 2,
	"h" => 4,
	"i" => 1,
	"j" => 8,
	"k" => 5,
	"l" => 1,
	"m" => 3,
	"n" => 1,
	"o" => 1,
	"p" => 3,
	"q" => 10,
	"r" => 1,
	"s" => 1,
	"t" => 1,
	"u" => 1,
	"v" => 4,
	"w" => 4,
	"x" => 8,
	"y" => 4,
	"z" => 10
}

	string_as_array = word.to_s.split(//)
	word_sum = 0
	if string_as_array.count >= 1
		string_as_array.each do |letter|
			word_sum += letter_scores[letter]
		end

		return word_sum
	else
		return 0
	end


end

#<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# score using the passed word
passed_word = ARGV[0]
score = scrabble_scorer(passed_word)
puts "The word '#{passed_word}' scores: #{score}"









