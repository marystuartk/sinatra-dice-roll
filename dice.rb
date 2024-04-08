# /dice.rb


# app.rb or the file where you have defined your Sinatra application

require 'sinatra'

get '/' do
  "<h1>Welcome to the Dice Roller</h1>
  <ul>
    <li><a href='/dice/2/10'>Roll two 10-sided dice</a></li>
    <li><a href='/dice/1/20'>Roll one 20-sided die</a></li>
    <li><a href='/dice/5/4'>Roll five 4-sided dice</a></li>
    <!-- You can add as many more links as you like here -->
  </ul>"
end

get '/dice/2/10' do
  results = 2.times.map { rand(1..10) }
  "You rolled: #{results.join(', ')}"
end

get '/dice/1/20' do
  results = 1.times.map { rand(1..20) }
  "You rolled: #{results.join(', ')}"
end

get '/dice/5/4' do
  results = 5.times.map { rand(1..4) }
  "You rolled: #{results.join(', ')}"
end

# Start your server with `ruby app.rb` and visit http://localhost:4567/
