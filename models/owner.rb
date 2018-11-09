require_relative('../db/sql_runner')

class Owner
  attr_reader :name, :type, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

end
