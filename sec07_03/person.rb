require 'forwardable'

class Person

  attr_reader :name
  attr_accessor :office_number

  def initialize(name, office_area_code, office_number)
    @name = name
    @office_number = office_number
    @office_telephone = TelephoneNumber.new(office_area_code, office_number)
  end
  
  extend Forwardable
  def_delegator :@office_telephone, :area_code, :office_area_code
  def_delegator :@office_telephone, :number, :office_number
  def_delegator :@office_telephone, :telephone_number
end

class TelephoneNumber
  attr_accessor :area_code, :number
  def initialize(area_code, number)
    @area_code = area_code
    @number = number
  end

  def telephone_number
    '(' + area_code + ') ' + number
  end
end