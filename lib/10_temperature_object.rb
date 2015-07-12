class Temperature
	def initialize(options)
		@degrees = options[:f] ? options[:f] : 9.0/5.0*options[:c] + 32
	end

	def in_fahrenheit
		@degrees
	end

	def in_celsius
		5.0/9.0*(@degrees - 32)
	end

	def self.from_celsius(degrees)
		Temperature.new(:c => degrees)
	end

	def self.from_fahrenheit(degrees)
		Temperature.new(:f => degrees)
	end
end

class Celsius < Temperature
	def initialize(degrees)
		@degrees = 9.0/5.0*degrees + 32
	end
end

class Fahrenheit < Temperature
	def initialize(degrees)
		@degrees = degrees
	end
end