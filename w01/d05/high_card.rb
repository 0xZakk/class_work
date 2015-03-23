# Week 1, Day 5 homework - due Monday
# 
# High-Card-Wins
# 
# 
# Tasks:
# 1. Build a deck of shuffled cards
# 2. Collect an array of player names
# 3. Upon "play", deal each player a card
# 4. Find the highest card
# 5. Find the winning player name and print a message
# 
# 
# Outline/Pseudocode
# First need to build a deck of cards
# Can borrow from shuffled deck assignment
# Add card hierarchy - Aces high
# Create a game menu: 'add player', 'play', 'play again'
# When 'add player'
# Array of player names
# Add player names until 'done'
# When done, return to menu
# 
# When 'play'
# Shuffled deck
# Assign last card in shuffled deck to player
# 	players.each do
# 		player_card = pop from shuffled_deck
# 		dealt_cards << {player: player_name, card: player_card}
# Rank players by card value
# Print winner's name to the screen
# "Zakk won with the A of Clubs"
# "Zakk and Sara tied with the A of Clubs and the A of Hearts"

def shuffled_deck_of_cards
	suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
	card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
	cards = []

	suits.each do |suit| 
		card_values.each_with_index do |value, score|
			cards << {suit: suit, card_value: value, score: score}
		end
	end
	return cards.shuffle
end

def under_construction
	puts "This section is under construction"
end


players = ["Zakk", "Sarah"]

loop do

	puts "Welcome to High-Card-Wins"
	puts "Please select from the following options:"
	puts "1. Add Player"
	puts "2. Play"
	puts "3. Quit"

	user_menu_selection = gets.chomp

	if user_menu_selection == "1"

		# use map?
		new_player_name = nil
		until new_player_name == "done"
			puts "Enter the new player's name. Enter 'done' to exit"
			new_player_name = gets.chomp
			players << new_player_name
		end 

		done = players.pop

			
	elsif user_menu_selection == "2"

		# use map?
		dealt_cards = []
		shuffled_deck = shuffled_deck_of_cards

		players.each do |player|
			player_card = shuffled_deck.pop
			dealt_cards << {player: player, card: player_card}
		end

		# puts dealt_cards.inspect

		i = 0
		while i < dealt_cards.count
			current_player = dealt_cards[i]
			current_card = current_player[:card]
			puts "#{current_player[:player]} has a score of #{current_card[:score]}"
			i += 1
		end

		puts dealt_cards

		# dealt_cards.each do
		# 	hand_card = dealt_cards[:card]

		# 	puts dealt_cards[:player]
		# 	puts hand_card[:score]
		# 	# score = hand_card[:score]

		# 	# puts "#{dealt_cards[:player]} has a score of #{score}"
		# end
			
		# player1 = dealt_cards[0]
		# player1_card = player1[:card]
		# player2 = dealt_cards[1]
		# player2_card = player2[:card]

		# puts dealt_cards.inspect

		# dealt_cards.cycle(1) {
		# 	current_player = dealt_cards[:player]
		# 	current_card = dealt_cards[:card]
		# 	puts "#{dealt_cards[:player]} has a score of #{current_card[:index]}"
		# }

	elsif user_menu_selection == "3"
		break
	else
		puts "Not a valid option."
	end
end
			

 























