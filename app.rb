require 'sinatra'

set :views, "views"

get '/' do
    erb :search_form
end

post '/search/' do
    searchterm = params[:searchterm] || "Nothing Submitted"
    erb :search_results, :locals => {'searchterm' => searchterm}
end
