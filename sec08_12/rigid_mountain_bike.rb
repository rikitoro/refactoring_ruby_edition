require_relative 'mountain_bike'

class RigidMountainBike
  include MountainBike

  def price
    (1 + @commission) * @base_price
  end
end