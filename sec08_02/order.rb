class Order

  def initialize(customer_name)
    @customer = Customer.with_name(customer_name)
  end

  def customer_name
    @customer.name
  end

  def customer=(customer_name)
    @customer = Customer.with_name(customer_name)
  end
end

class Customer

  Instances = {}

  def self.load_customers
    new("Lemon Car Hire").store
    new("Associated Coffee Machines").store
    new("Bilston Gasworks").store
  end


  attr_reader :name

  def store
    Instances[name] = self
  end
    
  def self.with_name(name)
    Instances[name]
  end

  def initialize(name)
    @name = name
  end

end