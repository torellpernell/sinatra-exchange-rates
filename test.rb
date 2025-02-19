require "sinatra"
require "sinatra/reloader"
require "dotenv/load"
require "http"
require "json"

get("/") do

api_url = "https://api.exchangerate.host/list?access_key=#{ENV.fetch("EXCHANGE_RATES_KEY")}"

@raw_response = HTTP.get(api_url)

# Get the body of the response as a string
# @raw_string = @raw_response.to_s

# Convert the string to JSON
@parsed_data = JSON.parse(@raw_response)



@currency = @parsed_data.fetch("currencies")

# @currency.each_keys {|item| puts item}

#pp @currency.keys
#pp @currency.class
pp @currency.length

 


# erb(:test)





 end
