require 'customer'
require 'faker'

module Whaler
  class CustomerBuilder
    def initialize limit
      @limit = limit
    end

    def self.with_limit count
      CustomerBuilder.new(count)
    end

    def get
      # create an array of from 1 to @limit populated with the index.
      ids = Array.new(@limit) {|i| i+1}
      
      #return an array of Customers with the id corresponding to the position in the array
      ids.map {|i| Customer.new(get_values.merge(:id => i)) }
    end

    def get_values
      {:first_name => Faker::Name.first_name,
      :last_name => Faker::Name.last_name,
      :street_address => Faker::Address.street_address(false),
      :city => Faker::Address.city,
      :state => Faker::Address.us_state_abbr,
      :zip_code => Faker::Address.zip_code,
      :order_count => rand(100),
      :average_order_amount => rand(10000) / 100,
      :favorite_item => Faker::Lorem.words(1)}
    end
  end
end
