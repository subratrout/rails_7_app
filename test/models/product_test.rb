require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test 'should have a positive price' do
    product = products(:one)
    product.price = -1
    assert_not product.valid?
  end

  test 'destroy user should destory the linked product' do
    assert_difference('Product.count', -1) do
      users(:one).destroy
    end
  end
end
