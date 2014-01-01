class Person
  
  def self.create_female
    Person.new(true, 'F')
  end

  def self.create_male
    Person.new(false, 'M')
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