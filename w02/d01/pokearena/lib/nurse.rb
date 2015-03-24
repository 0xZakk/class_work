require 'pry'

class Nurse
	def initialize(name, age, town)
		@name = name
		@age = age
		@town = town
	end

# List stats	
	def stats
		puts "Name: #{@name} the Nurse"
		puts "Age: #{@age}"
		puts "Hometwon: #{@hometown}"
	end

# Revive a players pokemon
	def revive(player)
		player_pokemons = player.pokemons
		player_pokemons.each { |pokemon| pokemon.hp = 100}
	end


end