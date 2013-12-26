require 'set'

class Customer
  attr_reader :discount

  def initialize(discount)
    @orders = Set.new
    @discount = discount
  end

  def add_order(order)
    @orders.add(order)
  end

  def price_for(order)
    assert { @orders.include?(order) }
    order.discounted_price(self)
  end

  def assert
    raise "Error: order is not included in orders" unless yield
  end 
end
