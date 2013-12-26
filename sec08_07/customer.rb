require 'set'

class Customer

  def initialize
    @orders = Set.new  
  end

  def friend_orders
    @orders
  end

  def add_order(order)
    order.customer = self
  end
end
