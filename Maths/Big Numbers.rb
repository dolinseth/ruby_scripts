class Exponent
	def self.calculate(x,power = 2)
		@x = x
		@y = x
		@power = power
		if @power.to_s.include?("-")
			@power *= -1
			while @power > 1
				@power -= 1
				@y *= @x
			end
			@y_counter = (@y.to_s.split("").count)
			puts " " * (@y_counter / 2) + "1"
			puts "-" * @y_counter
			puts "#{@y}"
		elsif @power == 0
			@y = 1
		else	
			while @power > 1
				@power -= 1
				@y = @y * @x
			end
			@y
		end
	end

	def self.self(x)
		@x = x
		@y = x
		@power = x
		while @power > 1
			@power -= 1
			@y *= @x
		end
		@y
	end

	def self.calculates(x,power = 2)
		@x = x
		@y = x
		@power = power
		while @power > 1
			puts "#{@y}"
			@power -= 1
			@y = @y * @x
		end
		@y
	end

	def self.calculater(x,power = 2)
		@extrapower = 0
		@x = x
		@y = x
		@power = power
		while @power > 1
			@power -= 1
			@extrapower += 1
			@y = @y * @x
			if @extrapower == 5000
				@extrapower = 0
				system "cls"
				puts @power
			end
		end
		@y
	end

	def self.help
		puts "calculate(x,power = 2)"
		puts "calculates(x,power = 2)"
		puts "calculater(x,power = 2)"
	end
end

BigNumber = Exponent.calculate(2, 26531)
ReallyBigNumber = Exponent.calculater(2, BigNumber)