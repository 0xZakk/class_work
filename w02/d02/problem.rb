require 'pry'

class Dictionary
	attr_accessor :keywords, :entries

  def initialize
		@entries  = Hash.new
		@keywords = Array.new
	end

	def add(entry)
  	if entry.is_a?(String)
			@keywords << entry
			@entries[entry]=nil
			@keywords.sort!
		else
			entry.each do |word, definition|
    		@entries[word] = definition
    		@keywords << word
    		@keywords.sort!
	     end
		end
	end

	def include?(str)
		if @keywords.include?(str)
			return true
		else
			return false
		end
	end

	def find_str
		string_of_keywords = @keywords.join(' ')
		array_of_found_words = string_of_keywords.scan(/#{str}\w*/)
		hash_of_found_words = {}
		
		array_of_found_words.each do |word|
			hash_of_found_words[word] = @entries[word]
		end

		return hash_of_found_words
	end

	def printable
		entries_array = Array.new
		@entries.each do |word, definition|
			entries_array << "[#{word}] \"#{definition}\""
		end
		entries_array.sort.join("\n")
	end
end

dictionary = Dictionary.new

dictionary.add("does this work?")
dictionary.add({"ball" => "a round thing you throw"})
dictionary.add({"bang" => "the sound an explosion makes"})
dictionary.add({"awesome" => "what your instructors are"})
dictionary.add({"law and order" => "the best damn TV show that ever graced this world"})
dictionary.add({"bat" => "winged spawn of satan"})
puts dictionary.entries
puts dictionary.keywords
puts dictionary.find("ba")
puts dictionary.include?("law and order")
puts dictionary.include?("ball")
puts dictionary.printable




