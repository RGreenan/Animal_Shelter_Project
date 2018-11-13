require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/owner' )
also_reload( '../models/*' )


## FIX & ADD RELEVANT OWNERS PAGES!

get '/owners/' do
  @owners = Owner.all()
  erb ( :"owners/index" )
end

# get '/animals/:id' do
#   @animals = Animal.find(params['id'].to_i)
#   erb(:"animals/show")
# end
