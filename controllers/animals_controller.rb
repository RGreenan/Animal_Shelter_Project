require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/animal' )
also_reload( '../models/*' )

# INDEX
get '/animals/' do
  @animals = Animal.all()
  erb ( :"animals/index" )
end

# NEW
get '/animals/new/' do
  @animals = Animal.all
  erb(:"animals/new")
end

# CREATE
post '/animals/' do
  Animal.new(params).save
  redirect to '/animals/'
end

# SHOW
get '/animals/:id' do
  @animals = Animal.find(params['id'].to_i)
  erb(:"animals/show")
end

# DESTROY
post '/animals/:id/delete' do
  animal = Animal.find(params['id'])
  animal.delete
  redirect to '/animals/'
end
