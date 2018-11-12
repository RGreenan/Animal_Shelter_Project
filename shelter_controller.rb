require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/animals_controller')


## INDEX
get '/' do
  erb(:index)
end



# NEW
# SHOW
# CREATE
# EDIT
# UPDATE
# DESTROY
