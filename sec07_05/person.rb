require 'forwardable'

class Person
  attr_writer :department
  extend Forwardable
  def_delegator :@department, :manager
end

class Department
  attr_reader :manager
  def initialize(manager)
    @manager = manager
  end
end