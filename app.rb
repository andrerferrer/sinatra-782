require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# ROUTES
get "/" do
  # CONTROLLER ACTION
  @restaurants = Restaurant.order(created_at: :desc)
  erb(:home) # it renders the HTML
end

get '/restaurants/:id' do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  # Convention for pages with details on one element
  erb(:show) # Show
end

# CREATE
post '/restaurants' do
  name = params[:restaurant_name]
  city = params[:restaurant_city]
  new_restaurant = Restaurant.new(
    name: name,
    city: city
  )
  new_restaurant.save
  redirect '/'
end
