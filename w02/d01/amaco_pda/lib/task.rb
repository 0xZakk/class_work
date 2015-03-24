class Task
	attr_reader :description, :completed

	def initialize(description)
		@description = description
		@completed = false
	end

	def mark_completed
		@completed = true
	end	

end



