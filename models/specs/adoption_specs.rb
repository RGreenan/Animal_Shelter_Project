require("minitest/autorun")
require_relative("../adoption")

class TestAdoption < MiniTest::Test

  def setup
    options = {'animal_id' => 1, 'owner_id' => 1}

    @adoption = Adoption.new(options)
  end

  def test_animal_id
    result = @adoption.animal_id
    assert_equal(1, result)
  end

  def test_owner_id
    result = @adoption.owner_id
    assert_equal(1, result)
  end

  # Should I test 'owner' & 'animal' here?

end
