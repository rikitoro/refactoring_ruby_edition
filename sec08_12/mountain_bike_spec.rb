require 'rspec'
require_relative 'mountain_bike'

describe MountainBike do
  context 'for rigit type bike' do
    let(:bike) { MountainBike.new(type_code: :rigid,
      tire_width: 2.5, commission: 0.1, base_price: 200) }
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 2.5 * 0.5 }
    end
    describe '#price' do
      it { expect(bike.price).to eq 1.1 * 200 }
    end    
  end

  context 'for front suspension type bike' do
    let(:bike) { MountainBike.new(type_code: :front_suspension,
      tire_width: 2, front_fork_travel: 3, 
      commission: 0.1, base_price: 200, front_suspension_price: 20) }
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 2 * 0.5 + 3 * 0.2}
    end
    describe '#price' do
      it { expect(bike.price).to eq 1.1 * 200 + 20}
    end    
  end

  context 'for full suspension type bike' do
    let(:bike) { MountainBike.new(type_code: :full_suspension,
      tire_width: 2, front_fork_travel: 3, rear_fork_travel: 3,
      commission: 0.1, base_price: 200, front_suspension_price: 20, rear_suspension_price: 15) }
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 2 * 0.5 + 3 * 0.2 + 3 * 0.3}
    end
    describe '#price' do
      it { expect(bike.price).to eq 1.1 * 200 + 20 + 15}
    end    
  end

end