require 'test_helper'

class CustomerTest  < Test::Unit::TestCase
  def test_id_set
    assert_equal 3, Whaler::Customer.new(:id => 3).customer_id
  end

  def test_first_name_set
    assert_equal 'Fred', Whaler::Customer.new(:first_name => 'Fred').first_name
  end

  def test_last_name_set
    assert_equal 'Smith', Whaler::Customer.new(:last_name => 'Smith').last_name
  end

  def test_address_set
    assert_equal '1234 Main St.', Whaler::Customer.new(:street_address => '1234 Main St.').street_address
  end

  def test_city_set
    assert_equal 'San Antonio', Whaler::Customer.new(:city => 'San Antonio').city
  end\

  def test_state_set
    assert_equal 'TX', Whaler::Customer.new(:state => 'TX').state
  end

  def test_zip_code_set
    assert_equal 23458, Whaler::Customer.new(:zip_code => 23458).zip_code
  end

  def test_zip_code_set
    assert_equal 8, Whaler::Customer.new(:order_count => 8).order_count
  end

  def test_average_order_amount_set
    assert_equal 23.22 ,Whaler::Customer.new(:average_order_amount => 23.22).average_order_amount
  end

  def test_favorite_item_set
    assert_equal 'Cheese Dip', Whaler::Customer.new(:favorite_item => 'Cheese Dip').favorite_item
  end
end
