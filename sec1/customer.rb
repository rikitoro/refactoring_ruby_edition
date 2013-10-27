require "./rental"

class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end
  
  def add_rental(arg)
    @rentals << arg
  end

  def statement
    frequent_renter_points = 0
    result = "Rental Record for #{@name}\n"
    @rentals.each do |element|      
      result += "\t" + element.movie.title + 
          "\t" + element.charge.to_s + "\n"
    end
        
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{self.frequent_renter_points} frequent renter points"
    result
  end

  def total_amount
    @rentals.inject(0) { |sum, rental| sum + rental.charge  }
  end

  def frequent_renter_points
    result = 0
    @rentals.each do |element|      
      result += 1
      if element.movie.price_code == Movie::NEW_RELEASE && element.days_rented > 1
        result += 1
      end
    end
    result
  end


end