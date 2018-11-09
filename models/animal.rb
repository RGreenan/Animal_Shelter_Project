require_relative('../db/sql_runner')

class Animal
  attr_reader :name, :type, :admission_date, :id

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

end
