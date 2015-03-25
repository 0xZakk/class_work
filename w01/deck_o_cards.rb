
def deck_of_cards
	# Suits and values
	suits = ['hearts', 'diamonds', 'clubs', 'spades']
	card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

	# Empty array for deck of cards
	cards = []

	# Enumerate through suits and values to get {suit: "hearts", card_value: "A"}

	suits.each do |suit| 
		# puts suit
		card_values.each do |value|
			# puts value
			# puts "#{value} of #{suit}"
			cards << {suit: suit, card_value: value}
		end
	end

	# card_values.each do |value|
	# 	suits.each do |suit|
	# 		puts "#{value} of #{suit}"
	# 	end
	# end
	return cards
end

# This puts the deck on the screen in order
# puts deck_of_cards()

# puts "Here is the shuffled deck:"
# puts deck_of_cards.shuffle

# # puts number of cards and the first card of the shuffled deck
shuffled_deck = deck_of_cards.shuffle
# shuffled_deck_length = shuffled_deck.length
# top_card = shuffled_deck.first
# top_card_value = top_card[:card_values]
# top_card_suit = top_card[:suit]
# puts "The deck has #{shuffled_deck.length} card"
# puts "The top card is the #{top_card_value} of #{top_card_suit}"




#create an array of players
players = []

# assign cards to hands
5.times do 
	# pull cards out of deck array
	top_five_card = shuffled_deck.pop(5)
	# add to player 1 array
	players << top_five_card
end

players.each do |players_hand|
	puts "***************"
	puts "The player has:"
	players_hand.each do |card|
		puts "The #{card[:card_value]} of #{card[:suit]}"
	end
end
















