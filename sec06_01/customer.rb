require_relative 'order'

class Customer
  def initialize(name)
    @name = name
    @orders = []
  end

  def add_order(order)
    @orders << order
    self
  end

  def print_owing
    print_banner
    # calculate outstanging
    outstanding = calculate_outstanding

    # print details
    puts "name: #{@name}"
    puts "amount: #{outstanding}"
  end

  def print_banner
    puts "*************************"
    puts "***** Customer Owes *****"
    puts "*************************"
  end

  def calculate_outstanding
    outstanding = 0
    @orders.each do |order|
      outstanding += order.amount
    end
    outstanding    
  end  
end
