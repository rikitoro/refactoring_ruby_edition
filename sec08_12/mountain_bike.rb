TIRE_WIDTH_FACTOR = 0.5
FRONT_SUSPENSION_FACTOR = 0.2
REAR_SUSPENSION_FACTOR = 0.3

module MountainBike
  def initialize(params)
    params.each { |key, value| instance_variable_set "@#{key}", value }
  end

end