class Nurse
	attr_reader :name, :age, :town

	def initialize(name, age, town)
		@name = name
		@age = age
		@town = town
	end

# List stats	
	def list_info
		nurse_info = [@name, @age, @town]
		nurse_info = nurse_info.join("\n")
		return nurse_info
	end

# Revive a players pokemon
	def heal_pokemon(player)
		player_pokemons = []
		player_pokemons = player.pokemons
		player_pokemons.each { |pokemon| pokemon.hp = 100}

	end


end