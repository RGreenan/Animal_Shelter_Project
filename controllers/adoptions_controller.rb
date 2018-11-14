require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/animal' )
require_relative( '../models/owner' )
require_relative( '../models/adoption' )
also_reload( '../models/*' )

#INDEX
get '/adoptions/' do
  @adoptions = Adoption.all
  erb (:"adoptions/index")
end
