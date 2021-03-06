class Circle
	def initialize(radius)
		@radius = radius
		@diameter = (2 * @radius)
		@pi = 3.141592653
	end

	def area
		@area = (Exponent.calculate((@pi * @radius)))
	end

	def circumference
		@circumference = (@pi * @diameter)
	end

	def self.help
		puts "initialize(radius)"
		puts "area"
		puts "circumference"
	end
end