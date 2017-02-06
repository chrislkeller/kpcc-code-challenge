require 'sinatra'
require 'json'
require 'open-uri'
include ERB::Util

set :public_folder, "public"
set :views, "views"

get '/' do
    erb :search_form
end

post '/search/' do
    url_prefix = "http://www.scpr.org/api/v3/articles?types=news&query="

    # needs to handle searchterm of null
    searchterm = params[:searchterm] || "Nothing Submitted"
    encoded_searchterm = url_encode(searchterm)
    request_url = "#{url_prefix}#{encoded_searchterm}"

    # needs to handle api response error
    request_data = open(request_url).read
    response = JSON.parse(request_data)

    quantity = response["articles"].length

    erb :search_results, :locals => {
        "searchterm" => searchterm,
        "articles" => response["articles"],
        "quantity" => quantity
    }

end
