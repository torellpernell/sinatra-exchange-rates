require "sinatra"
require "sinatra/reloader"
require "dotenv/load"


get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
