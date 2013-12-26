#require 'enum'

class Order
  attr_reader :gross_price

  def initialize(gross_price)
    @gross_price = gross_price

  end

  def discounted_price(customer)
    gross_price * (1 - customer.discount)
  end
end