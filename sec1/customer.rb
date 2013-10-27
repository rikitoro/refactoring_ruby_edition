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
    @rentals.each do |rental|      
      result += "\t" + rental.movie.title + 
          "\t" + rental.charge.to_s + "\n"
    end
        
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{self.frequent_renter_points} frequent renter points"
    result
  end

  def total_amount
    @rentals.inject(0) { |sum, rental| sum + rental.charge  }
  end

  def frequent_renter_points
    @rentals.inject(0) { |sum, rental| sum + frequent_renter_points_for(rental) }
  end

  def frequent_renter_points_for(rental)
    result = 1
    if rental.movie.price_code == Movie::NEW_RELEASE && rental.days_rented > 1
      result += 1
    end
    result
  end
end