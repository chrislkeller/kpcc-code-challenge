require 'sinatra'

set :views, "views"

get '/' do
    erb :search_form
end
