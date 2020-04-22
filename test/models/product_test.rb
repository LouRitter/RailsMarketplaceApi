require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "price should be positive" do
    product = products(:one)
    product.price = -1
    assert_not product.valid?
  end
end
