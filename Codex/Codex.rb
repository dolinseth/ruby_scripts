class Codex
	def self.encrypt(user_message_encrypt)
		@user_message_encrypt = user_message_encrypt
		@shift = (1 + rand(100000000))
		@split_message_encrypt = @user_message_encrypt.split("")
		@encrypted_message = []
		@split_message_encrypt.each do |letter|
			unless letter == " "
				@encrypted_message << (((letter.ord - 97 + (@shift)) % 26) + 97).chr
			else 
				@encrypted_message << " "
			end
		end
		puts "Message:#{@encrypted_message.join("")}"
		puts "Passcode:#{@shift}"
	end

	def self.decrypt(user_message_decrypt,shift)
		@user_message_decrypt = user_message_decrypt
		@shift = shift
		@split_message_decrypt = @user_message_decrypt.split("")
		@decrypted_message = []
		@split_message_decrypt.each do |letter|
			unless letter == " "
				@decrypted_message << (((letter.ord - 97 - (@shift)) % 26) + 97).chr
			else
				@decrypted_message << " "
			end
		end
		@decrypted_message.join
	end

	def self.help
		puts "self.encrypt(user_message_encrypt)"
		puts "self.decrypt(user_message_decrypt,shift)"
	end
end