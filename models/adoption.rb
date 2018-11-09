require_relative('../db/sql_runner')

class Adoption
  attr_reader :animal_id, :zombie_id, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @animal_id = options['animal_id'].to_i
    @owner_id = options['owner_id'].to_i
  end
end

# SAVE
