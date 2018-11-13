require("minitest/autorun")
require_relative("../owner")

class TestOwner < MiniTest::Test

  def setup
    options = {'name' => 'Maria', 'wanting' => 'Dog'}

    @owner = Owner.new(options)
  end

  def test_owner_name
    result = @owner.name
    assert_equal('Maria', result)
  end

  def test_owner_wants_pet_type
    result = @owner.wanting
    assert_equal('Dog', result)
  end

# test for 'delete' needed??

end
