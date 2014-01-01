require_relative 'person'

class Male < Person

  def initialize
    super(false, 'M')
  end


  def code
    'M'
  end
end