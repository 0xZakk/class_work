class Pokemon
	attr_reader :id, :poketype, :attack, :defense, :speed
	attr_writer :hp, :name

	def initialize(name, id, poketype, hp, attack, defense, speed)
		@name = name
		@poketype = poketype
		@id = id
		@hp = hp
		@attack = attack
		@defense = defense
		@speed = speed
	end

def hp
	if @hp > 100
		@hp = 100
		return @hp
	else
		return @hp
	end
end

def name
	formatted_name = @name.capitalize
	return formatted_name
end

#
# The folowing are methods that will need to be created to handle the listed behaviors
#

# List stats
	def list_stats
		poke_stats = [@name, @poketype, @id, @hp, @attack, @defense, @speed]
		return poke_stats.join("\n")
	end

# Restore HP
	def full_restore
		@hp = 100
		return @hp
	end

# Take damage
	def take_damage
		if hp == 0
			return false
		else
			@hp -= 20
			if @hp <= 0
				@hp = 0
				return @hp
			end
			return @hp			
		end
	end

	def fainted?
		if @hp == 0
			return true
		else
			return false
		end
	end


end
