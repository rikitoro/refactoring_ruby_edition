require_relative 'front_suspension_mountain_bike'
require_relative 'full_suspension_mountain_bike'

class MountainBike
  TIRE_WIDTH_FACTOR = 0.5
  FRONT_SUSPENSION_FACTOR = 0.3
  REAR_SUSPENSION_FACTOR = 0.2

  attr_reader :type_code

  def initialize(params)
    self.type_code = params[:type_code]
    @commission = params[:commission]
    @front_fork_travel = params[:front_fork_travel]
    @rear_fork_travel = params[:rear_fork_travel]
    @tire_width = params[:tire_width]
    @base_price = params[:base_price]
    @front_suspension_price = params[:front_suspension_price]
    @rear_suspension_price = params[:rear_suspension_price]
  end

  def type_code=(value)
    @type_code = value
    case type_code
    when :front_suspension 
      extend(FrontSuspensionMountainBike)
    when :full_suspension 
      extend(FullSuspensionMountainBike)
    end
  end

  def off_road_ability
    @tire_width * TIRE_WIDTH_FACTOR
  end

  def price
    (1 + @commission) * @base_price
  end
end