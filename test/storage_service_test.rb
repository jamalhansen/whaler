require 'test_helper'

class StorageServiceTest  < Test::Unit::TestCase
  def test_can_get_output_path_from_customer
    service = Whaler::StorageService.new
    customer = Whaler::Customer.new :id => 1, :first_name => 'Bob', :last_name => 'Smith'
    path = File.expand_path(File.join("~", "WhalerOutput", "1_Bob_Smith_letter.pdf"))
    assert_equal path, service.path_and_filename(customer)
  end

  def test_path_ensures_path_exists
    service = Whaler::StorageService.new
    path = service.path
    assert File.exists?(path)
  end
end
