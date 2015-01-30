require 'httparty'
URL = "http://messengr.herokuapp.com/messages.json"
puts "Please enter a username:"
@client_user = gets.chomp
puts "Please enter a message:"
while true
	@message = gets.chomp
	@response_1 = HTTParty.post(URL, :query => {:user => @client_user, :text => @message})
	@response_2 = HTTParty.get(URL, :query => {:last_message_id => @last_message_id})
	@parsed_response_2 = @response_2.parsed_response
	if @parsed_response_2.last.nil? == false
		@user = @parsed_response_2.last["user"]		
		@message = @parsed_response_2.last["text"]
		puts "#{@user}: #{@message}"
	else
		puts "#{@client_user}:"
	end
	@last_message_id = @parsed_response.last["id"] if @parsed_response.last
	sleep(2)
end
