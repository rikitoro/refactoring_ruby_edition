require 'forwardable'
require_relative 'rigid_mountain_bike'
require_relative 'front_suspension_mountain_bike'
require_relative 'full_suspension_mountain_bike'

class MountainBike
  TIRE_WIDTH_FACTOR = 0.5
  FRONT_SUSPENSION_FACTOR = 0.3
  REAR_SUSPENSION_FACTOR = 0.2


  extend Forwardable
  def_delegators :@bike_type, :off_road_ability, :price

  def initialize(bike_type)
    @bike_type = bike_type
  end


  def add_front_suspension(params)
    @bike_type = FrontSuspensionMountainBike.new(
      @bike_type.upgradable_parameters.merge(params) )
  end

  def add_rear_suspension(params)
    unless @bike_type.is_a?(FrontSuspensionMountainBike)
      raise "You can't rear suspension unless you have front suspension"
    end
    @bike_type = FullSuspensionMountainBike.new(
      @bike_type.upgradable_parameters.merge(params) )
  end


end