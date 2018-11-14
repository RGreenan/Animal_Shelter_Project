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

# SHOW (Don't need - using 'index' to show owners)

# EDIT
get '/owners/:id/edit' do
  @owners = Owner.find(params[:id])
  erb(:"owners/edit")
end

# UPDATE
post '/owners/:id' do
  owner = Owner.new(params)
  owner.update
  redirect to '/owners/'
end

# DESTROY # can delete any owners not included in 'adoptions' table!!
post '/owners/:id/delete' do
  owner = Owner.find(params['id'])
  owner.delete
  redirect to '/owners/'
end
