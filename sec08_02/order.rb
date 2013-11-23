class Order

  def initialize(customer)
    @customer = Customer.new(customer)
  end

  def customer
    @customer.name
  end

  def customer=(value)
    @customer = Customer.new(value)
  end
end

class Customer
  attr_reader :name

  def initialize(name)
    @name = name
  end
end