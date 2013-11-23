class Person
  attr_accessor :department
  def manager
    @department.manager
  end
end

class Department
  attr_reader :manager
  def initialize(manager)
    @manager = manager
  end
end