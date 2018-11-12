require("minitest/autorun")
require_relative("../owner")

class TestOwner < MiniTest::Test

  def setup
    options = {'name' => 'Maria'}

    @owner = Owner.new(options)
  end

  def test_owner_name
    result = @owner.name
    assert_equal('Maria', result)
  end
end
