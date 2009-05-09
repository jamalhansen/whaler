# To change this template, choose Tools | Templates
# and open the template in the editor.

module Whaler
  class Customer
    attr_accessor :first_name, :last_name, :street_address, :city, :state, :zip_code,
      :order_count, :average_order_amount, :favorite_item, :customer_id

    def initialize params = {}
      @customer_id = params[:id]
      @first_name = params[:first_name]
      @last_name = params[:last_name]
      @street_address = params[:street_address]
      @city = params[:city]
      @state = params[:state]
      @zip_code = params[:zip_code]
      @order_count = params[:order_count]
      @average_order_amount = params[:average_order_amount]
      @favorite_item = params[:favorite_item]

    end
  end
end
