class CoinFlip
	def self.multiple(number_of_coins = 2)
		@number_of_coins = number_of_coins
		@total_coins = number_of_coins
		@number_of_heads = 0.00000
		@number_of_tails = 0.00000
		while @number_of_coins > 0
			@number_of_coins -= 1
			@coin = rand(2)
			if @coin == 0
				@number_of_heads += 1
			elsif @coin == 1
				@number_of_tails += 1
			end
		end
		@percentage_tails = ((@number_of_tails / @total_coins) * 100).round(5)
		@percentage_heads = ((@number_of_heads / @total_coins) * 100).round(5)
		puts "Percentage heads = %#{@percentage_heads}"
		puts "Percentage tails = %#{@percentage_tails}"
	end

	def single
		@coin = rand(2)
		if @coin == 0
			puts "Heads"
		elsif @coin == 1
			puts "Tails"
		end
	end

	def self.help
		puts "single"
		puts "multiple(number_of_coins = 2)"
	end
end
#Just for standardization, use value 0 for Heads, and value 1 for Tails