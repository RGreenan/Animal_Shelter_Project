require_relative('../db/sql_runner')

class Adoption
  attr_reader :animal_id, :owner_id, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @animal_id = options['animal_id'].to_i
    @owner_id = options['owner_id'].to_i
  end

  # save
  def save()
    sql = "INSERT INTO adoptions
    (animal_id, owner_id)
    VALUES ($1, $2)
    RETURNING id"
    values = [@animal_id, @owner_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

####
  def Adoption.all()
    sql = "SELECT * FROM adoptions"
    adoption_info = SqlRunner.run(sql)
    adoption = map_items(adoption_info)
    return adoption
  end

  def Adoption.map_items(adoption_info)
    return adoption_info.map { |adoption| Adoption.new(adoption) }
  end
####

# # IS THIS VALID?
#   def owner
#     sql = "SELECT * FROM owners
#     WHERE id = $1"
#     values = [@owner_id]
#     results = SqlRunner.new(sql, values)
#     return Owner.new(results.first)
#   end
#
# # IS THIS VALID?
#     def animal
#       sql = "SELECT * FROM animals
#       WHERE id = $1"
#       values = [@animal_id]
#       results = SqlRunner.new(sql, values)
#       return Animal.new(results.first)
#     end
end
