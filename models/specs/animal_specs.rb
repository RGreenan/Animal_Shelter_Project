require("minitest/autorun")
require_relative("../animal")

class TestAnimal < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "Lossoth", "type" => "Labrador",
      "admission_date" => "21/06/18"}

    @animal = Animal.new(options)
  end

  def test_animal_name
    result = @animal.name
    assert_equal("Lossoth", result)
  end

  def test_type
    result = @animal.type
    assert_equal("Labrador", result)
  end

  def test_admission_date
    result = @animal.admission_date
    assert_equal("21/06/18", result)
  end

  
end
