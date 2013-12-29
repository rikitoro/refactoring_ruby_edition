class Course
  def initialize(name, advanced)
    @name = name
    @advanced = advanced
  end

  def advanced?
    @advanced
  end
end