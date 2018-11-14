require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/animals_controller')
require_relative('controllers/owners_controller')
require_relative('controllers/adoptions_controller')
#link other controllers when created

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
