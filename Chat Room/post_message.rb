require 'httparty'
URL = "http://messengr.herokuapp.com/messages.json"
puts "Please enter a username:"
@user = gets.chomp
print "Please enter a message:"
while true
	@message = gets.chomp
	@response_1 = HTTParty.post(URL, :query => {:user => @user, :text => @message})
	@parsed_response_1 = @response_1.parsed_response
end
