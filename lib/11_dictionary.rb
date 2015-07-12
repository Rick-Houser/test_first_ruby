class Dictionary
	attr_reader :entries

	def initialize(entries={})
		@entries = entries
	end

	def add(entry)
		entry= {entry => nil } if entry.is_a?(String)
		@entries.merge!(entry)
	end

	def keywords
		@entries.keys.sort
	end

	def include?(key)
		@entries.has_key?(key)
	end

	def find(word)
		keys = keywords.keep_if { |key| key =~ Regexp.new("(.*)#{word}(.*)") }
		@entries.reject { |k,v| not keys.include?(k) }
	end

	def printable
		@entries.sort.inject("") { |memo, ele| memo + "[#{ele[0]}] \"#{ele[1]}\"\n" }.chop
	end
end