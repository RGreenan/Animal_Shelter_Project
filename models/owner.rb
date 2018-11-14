require_relative('../db/sql_runner')

class Owner
  attr_accessor :name, :wanting
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @wanting = options['wanting']
  end

  def save()
    sql = "INSERT INTO owners
    (name, wanting)
    VALUES ($1, $2)
    RETURNING id"
    values = [@name, @wanting]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def Owner.all()
    sql = "SELECT * FROM owners"
    results = SqlRunner.run(sql)
    return results.map { |owner| Owner.new (owner)}
  end

  def Owner.find( id )
    sql = "SELECT * FROM owners
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Owner.new( results.first )
  end

  def delete()
    sql = "DELETE FROM owners
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def update()
    sql = "UPDATE owners SET (name, wanting)
    =($1, $2)
    WHERE id = $3"
    values = [@name, @wanting, @id]
    SqlRunner.run(sql, values)
  end

end
