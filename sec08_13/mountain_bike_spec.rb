require 'rspec'
require_relative 'mountain_bike'
require_relative 'front_suspension_mountain_bike'
require_relative 'full_suspension_mountain_bike'

describe MountainBike do
  context 'for rigid type mountain bike' do
    let(:bike) { MountainBike.new(
      commission: 0.1, tire_width: 2, base_price: 100) }
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 2 * 0.5 }
    end
    describe '#price' do
      it { expect(bike.price).to eq (1 + 0.1) * 100 }
    end
  end

  context 'for front suspension type mountain bike' do
    let(:bike) { MountainBike.new(
      commission: 0.1, tire_width: 2, front_fork_travel: 3, 
      base_price: 100, front_suspension_price: 20) }
    before { bike.type_code = FrontSuspensionMountainBike}
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 2 * 0.5 + 3 * 0.3 }
    end
    describe '#price' do
      it { expect(bike.price).to eq (1 + 0.1) * 100 + 20 }
    end
  end

  context 'for full suspension type mountain bike' do
    let(:bike) { MountainBike.new(
      commission: 0.1, tire_width: 2, front_fork_travel: 3, rear_fork_travel: 3, 
      base_price: 100, front_suspension_price: 20, rear_suspension_price: 30) }
    before { bike.type_code = FullSuspensionMountainBike }
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 2 * 0.5 + 3 * 0.3 + 3 * 0.2}
    end
    describe '#price' do
      it { expect(bike.price).to eq (1 + 0.1) * 100 + 20 + 30 }
    end
  end

end