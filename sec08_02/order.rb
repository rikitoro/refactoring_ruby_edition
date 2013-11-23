class Order

  def initialize(customer_name)
    @customer = Customer.create(customer_name)
  end

  def customer_name
    @customer.name
  end

  def customer=(customer_name)
    @customer = Customer.create(customer_name)
  end
end

class Customer

  def self.create(name)
    Customer.new(name)
  end

  attr_reader :name

  def initialize(name)
    @name = name
  end

end