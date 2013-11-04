class Person
  attr_reader :mother, :children, :name
  
  def initialize(name, data_of_birth, date_of_death = nil, mother = nil)
    @name, @mother = name, mother
    @data_of_birth, @date_of_death = data_of_birth, date_of_death
    @children = []
    @mother.add_child(self) if @mother
  end

  def add_child(child)
    @children << child
  end

  def alive?
    @date_of_death.nil?
  end

  def number_of_living_descendants
    number_of_descendants_matching { |child| child.alive? }
  end

  def number_of_descendants_named(name)
    number_of_descendants_matching { |child| child.name == name }
  end

  protected
  def number_of_descendants_matching(&block)
    @children.inject 0 do |count, child|
      count += 1 if yield child 
      count + child.number_of_descendants_matching(&block)
    end 
  end

end