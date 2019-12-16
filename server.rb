require 'sinatra'
require './product.rb'

# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'


post '/' do
	account_sid = ENV['TWILIO_SID']
	auth_token = ENV['TWILIO_AUTH']
	
	client = Twilio::REST::Client.new(account_sid, auth_token)
	
	from = '+13052406736' # Your Twilio number
	to = '+15167376277' # Your mobile phone number
	
	client.messages.create(
	from: from,
	to: to,
	body: "You have signed up for text message alerts from Wake 'n' Bakery!\n You can reply with STOP to discontinue."
	
	client.messages.create(
	from: from,
	to: to,
	body: ""
	)
end

get '/' do
	
	erb :home, :layout => :index
end

get '/cookies' do
	cookies = @@cookies
	
	erb :cookies, :layout => :index
end

get '/muffins' do
	muffins = @@muffins
	erb :muffins, :layout => :index
end

get '/cakes' do
	cakes = @@cakes
	erb :cakes, :layout => :index
end

