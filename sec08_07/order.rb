#require 'enum'

class Order
  attr_reader :customer

  def customer=(value)
    customer.friend_orders.delete(self) unless customer.nil?
    @customer = value
    customer.friend_orders.add(self) unless customer.nil?
  end
end