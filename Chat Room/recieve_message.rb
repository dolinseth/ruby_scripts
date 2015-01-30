require 'httparty'
URL = "http://messengr.herokuapp.com/messages.json"
@last_message_id = 0
while true	
	@response_2 = HTTParty.get(URL, :query => {:last_message_id => @last_message_id})
	@parsed_response = @response_2.parsed_response
	if @parsed_response.last.nil? == false
		@user = @parsed_response.last["user"]		
		@message = @parsed_response.last["text"]
		puts "#{@user}: #{@message}"
	end
	@last_message_id = @parsed_response.last["id"] if @parsed_response.last
	sleep(2)
end