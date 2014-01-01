require_relative 'person'

class Female < Person
  def female?
    true
  end

  def code
    'F'
  end
end