require_relative('../db/sql_runner')

class Animal
  attr_reader :name, :type, :admission_date, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @admission_date = options['admission_date']
  end

end
