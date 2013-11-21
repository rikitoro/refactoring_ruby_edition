class Person

  attr_reader :name
  attr_accessor :office_area_code
  attr_accessor :office_number
  
  def initialize(name, office_area_code, office_number)
    @name = name
    @office_area_code, @office_number = office_area_code, office_number
  end
  
  def telephone_number
    '(' + @office_area_code + ') ' + @office_number
  end
end