require 'sinatra'
require 'googlebooks'

get '/' do
	# render a form
	erb :home, :layout => :index
end

post '/' do 

end

