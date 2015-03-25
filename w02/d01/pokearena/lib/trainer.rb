class Trainer
	attr_reader :name, :age, :hometown, :pokemons

	def initialize(name, age, hometown, pokemons)
		@name = name
		@age = age
		@hometown = hometown
		@pokemons = pokemons
	end
	
#
# The folowing are methods that will need to be created to handle the listed behaviors
#

# List stats
	def list_info
		trainer_info = [@name, @age, @hometown, @pokemons]
		return trainer_info.join("\n")
	end

# List pokemon
	def list_pokemons
		# puts "Ash is holding:"
		current_pokemon =  @pokemons.map { |pokemon| pokemon.name}
		current_pokemon = current_pokemon.join("\n")
		# current_pokemon.each_with_index { |name, idx| puts "#{idx}. #{name}"}

		return current_pokemon
	end

# List pokemon information

	# def list_pokemons
	# 	@pokemons.each do |pokemon|
	# 		puts "#{pokemon.name}: "
	# 		pokemon.stats
	# 	end
	# ends

# Add pokemon, while number of pokemon < 6
	def add_pokemon(pokemon)
		if @pokemons.count >= 6
			# "#{@name} can't cary any more Pokemon!"
			return false
		else
			current_pokemon = []
			current_pokemon = @pokemons
			current_pokemon.push(pokemon)
			@pokemons = current_pokemon
			return true
		end
	end

	
end









