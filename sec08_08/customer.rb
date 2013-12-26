require 'set'

class Customer
  attr_reader :discount

  def initialize(discount)
    @orders = Set.new
    @discount = discount
  end

  def friend_orders
    @orders
  end

  def add_order(order)
    order.customer = self
  end

  def price_for(order)
    assert { @orders.include?(order) }
    order.discounted_price
  end

  def assert
    raise "Error: order is not included in orders" unless yield
  end 
end
