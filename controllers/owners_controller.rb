require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/owner' )
also_reload( '../models/*' )

# INDEX
get '/owners/' do
  @owners = Owner.all()
  erb ( :"owners/index" )
end

# NEW
get '/owners/new/' do
  @owners = Owner.all
  erb(:"owners/new")
end

# CREATE
post '/owners/' do
  p params #for viewing in terminal
  Owner.new(params).save
  redirect to '/owners/'
end

# SHOW
get '/owners/:id' do
  @owners = Owner.find(params['id'].to_i)
  erb(:"owners/show")
end

# EDIT

# DESTROY
post '/owners/:id/delete' do
  owner = Owner.find(params['id'])
  owner.delete
  redirect to '/owners/'
end
