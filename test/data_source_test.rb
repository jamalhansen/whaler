require 'test_helper'

# for this example I'm going to use faker to build up data.
# in real life you could use ActiveRecord or any of many other tools to
# get your data.
class DataSourceTest < Test::Unit::TestCase
  def test_get_records
    customers = Whaler::CustomerBuilder.with_limit(3).get
    assert_equal 3, customers.length
    assert_equal Whaler::Customer, customers[0].class
  end

  def test_records_are_populated
    customer = Whaler::CustomerBuilder.with_limit(1).get[0]
    assert_not_nil customer.first_name
    assert_not_nil customer.last_name
    assert_not_nil customer.street_address
    assert_not_nil customer.city
    assert_not_nil customer.state
    assert_not_nil customer.zip_code
    assert_not_nil customer.order_count
    assert_not_nil customer.average_order_amount
    assert_not_nil customer.favorite_item
  end
end
