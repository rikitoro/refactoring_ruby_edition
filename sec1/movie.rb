require_relative 'price'

class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  attr_reader :title
  attr_reader :price_code

  def price_code=(code)
    @price_code = code
    @price = case @price_code
      when REGULAR; RegularPrice.new
      when NEW_RELEASE; NewReleasePrice.new
      when CHILDRENS; ChildrensPrice.new
    end
  end

  def initialize(title, price_code)
    @title = title
    self.price_code = price_code 
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end

end

