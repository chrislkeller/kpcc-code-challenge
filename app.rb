require 'sinatra'

set :views, "views"

get '/' do
    erb :search_form
end

post '/search/' do
    searchterm = params[:searchterm] || "Nothing Submitted"
    erb :index, :locals => {'searchterm' => searchterm}
end
