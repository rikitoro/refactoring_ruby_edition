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
    total_amount, frequent_renter_points = 0, 0
    result = "Rental Record for #{@name}\n"
    @rentals.each do |element|

      frequent_renter_points += frequent_renter_points_for(element)

      result += "\t" + element.movie.title + 
                "\t" + element.charge.to_s + "\n"
      total_amount += element.charge      

    end
        
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end


  def frequent_renter_points_for(rental)
    result = 1

    if rental.movie.price_code == Movie::NEW_RELEASE && 
       rental.days_rented > 1
      result += 1
    end

    result
  end

end