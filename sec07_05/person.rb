class Person
  attr_accessor :department
end

class Department
  attr_reader :manager
  def initialize(manager)
    @manager = manager
  end
end