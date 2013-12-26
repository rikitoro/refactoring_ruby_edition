#require 'enum'

class Order
  attr_reader :customer
  attr_reader :gross_price

  def initialize(gross_price)
    @gross_price = gross_price

  end

  def customer=(value)
    customer.friend_orders.delete(self) unless customer.nil?
    @customer = value
    customer.friend_orders.add(self) unless customer.nil?
  end

  def discounted_price
    gross_price * (1 - @customer.discount)
  end
end