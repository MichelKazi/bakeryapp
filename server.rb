require 'sinatra'
require './product.rb'

# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'

# account_sid = 'AC21c12814761cbd54749844d23a839ded'
# auth_token = ENV['TWILLIO_AUTH']

# client = Twilio::REST::Client.new(account_sid, auth_token)

# from = '+13052406736' # Your Twilio number
# to = '+15167376277' # Your mobile phone number

# client.messages.create(
# from: from,
# to: to,
# body: "Hey friend!"
# )


get '/' do
	
	erb :home, :layout => :index
end

get '/cookies' do
	
	erb :cookies, :layout => :index
end
get '/muffins' do
	
	erb :muffins, :layout => :index
end
get '/cakes' do
	
	erb :cakes, :layout => :index
end


