class Person
  
  def self.create_female
    Person.new(true, 'F')
  end

  def self.create_male
    Male.new
  end

  attr_reader :code

  def initialize(female, code)
    @female = female
    @code = code
  end

  def female?
    @female
  end
end