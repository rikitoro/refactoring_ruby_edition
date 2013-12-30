require_relative 'mountain_bike'

class FullSuspensionMountainBike
  include MountainBike

  def price
    (1 + @commission) * @base_price + @front_suspension_price + @rear_suspension_price
  end

end
