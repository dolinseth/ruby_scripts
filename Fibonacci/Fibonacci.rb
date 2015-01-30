class Fibonacci
	def self.find(sequence_length = 1000)
		@sequence_length = sequence_length
		@numbers = [1,1]
		while @sequence_length != 0
			@sequence_length -= 1
			@numbers_last = @numbers.last
			@numbers_second_to_last = @numbers.last(2).delete_at(0)
			@numbers << (@numbers_last + @numbers_second_to_last)
		end
		@numbers
	end

	def self.find_last_two_digits(sequence_length = 1000)
		@sequence_length = sequence_length
		@numbers = [1,1]
		while @sequence_length != 0
			@sequence_length -= 1
			@numbers_last = @numbers.last
			@numbers_second_to_last = @numbers.last(2).delete_at(0)
			@numbers << (@numbers_last + @numbers_second_to_last)
		end
		@numbers.last(2)
	end

	def self.help
		puts "self.find(sequence_length = 1000)"
		puts "self.find_last_two_digits(sequence_length = 1000)"
	end
end