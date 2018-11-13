require_relative('../db/sql_runner')

class Animal
  attr_accessor :name
  attr_reader :type, :admission_date, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @admission_date = options['admission_date']
  end

  def save()
    sql = "INSERT INTO animals
    (name, type, admission_date)
    VALUES ($1, $2, $3)
    RETURNING id"
    values = [@name, @type, @admission_date]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE animals SET (name, type, admission_date)
    =($1, $2, $3)
    WHERE id = $4"
    values = [@name, @type, @admission_date, @id]
    SqlRunner.run(sql, values)
  end

  def Animal.all()
    sql = "SELECT * FROM animals"
    results = SqlRunner.run( sql )
    return results.map { |animal| Animal.new( animal ) }
  end

  def Animal.find( id ) #find individual animal
    sql = "SELECT * FROM animals
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Animal.new( results.first )
  end

end
