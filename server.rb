require 'sinatra'
require './product.rb'
require 'sendgrid-ruby'
require 'twilio-ruby'
include SendGrid


post '/text' do

	
	account_sid = ENV['TWILIO_SID']
	auth_token = ENV['TWILIO_AUTH']
	puts ENV['TWILIO_SID']
	puts ENV['TWILIO_AUTH']
	client = Twilio::REST::Client.new(account_sid, auth_token)
	
	from = '+13052406736' # Your Twilio number
	to = '+15167376277' # Your mobile phone number
	
	client.messages.create(
	from: from,
	to: to,
	body: "Hi!\nYou have signed up for text message alerts from Wake 'n' Bakery!\nYou can reply with STOP to discontinue."
	)
	
end


post '/email' do
#   from = Email.new(email: 'test@example.com')
#   subject = 'Wake \'n\' Bakery Mailing List'
#   to = Email.new(email: params['user_email'])
#   content = Content.new(type: 'text/plain', value: "Thanks for signing up for email alerts from Wake 'n' Bakery")
#   mail = SendGrid::Mail.new(from, subject, to, content)
#   # puts JSON.pretty_generate(mail.to_json)
#   puts mail.to_json

	mail = SendGrid::Mail.new
	mail.template_id = 'd-c72f0db72da446d1ad8a3872c8cfde30' # a non-legacy template id
	mail.from = Email.new(email: 'michel.m.kazi@gmail.com')
	subject = 'Dynamic Template Data Hello World from the Twilio SendGrid Ruby Library'
	mail.subject = subject
	personalization = Personalization.new
	personalization.add_to(Email.new(email: params['user_email']))
	
	mail.add_personalization(personalization)

	
  sg = SendGrid::API.new(api_key: ENV['SENDGRID_AUTH'], host: 'https://api.sendgrid.com')
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  puts response.headers

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

