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
          "\t" + amount_for(element).to_s + "\n"

    end
        
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{self.frequent_renter_points} frequent renter points"
    result
  end

  def total_amount
    result = 0
    @rentals.each do |element|
      result += amount_for(element)
    end
    result
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

  def amount_for(rental)
    result = 0

    case rental.movie.price_code
    when Movie::REGULAR
      result += 2
      result += (rental.days_rented - 2) * 1.5 if rental.days_rented > 2
    when Movie::NEW_RELEASE
      result += rental.days_rented * 3
    when Movie::CHILDRENS
      result += 1.5
      result += (rental.days_rented - 3) * 1.5 if rental.days_rented > 3
    end

    result      
  end

end