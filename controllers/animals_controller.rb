require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/animal' )
also_reload( '../models/*' )


get '/animals/' do
  @animals = Animal.all()
  erb ( :"animals/show" )
end

# get '/victims/:id' do
#   @victim = Victim.find(params['id'].to_i)
#   erb( :"victims/show" )
# end
