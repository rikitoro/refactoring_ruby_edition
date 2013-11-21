class Person

  attr_reader :name
  attr_accessor :office_number

  def initialize(name, office_area_code, office_number)
    @name = name
    @office_number = office_number
    @office_telephone = TelephoneNumber.new(office_area_code, office_number)
  end
  
  def telephone_number
    '(' + office_area_code + ') ' + office_number
  end

  def office_area_code
    @office_telephone.area_code
  end

  def office_number
    @office_telephone.number
  end
end

class TelephoneNumber
  attr_accessor :area_code, :number
  def initialize(area_code, number)
    @area_code = area_code
    @number = number
  end
end