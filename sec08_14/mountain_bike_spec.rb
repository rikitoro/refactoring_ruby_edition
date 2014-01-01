require 'rspec'
require_relative'mountain_bike'

describe MountainBike do
  context 'for rigid mountain bike' do
    let(:bike) { MountainBike.new(type_code: :rigid,
      tire_width: 3, base_price: 100, commission: 0.1) }
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 3 * 0.5 }
    end
    describe '#price' do
      it { expect(bike.price).to eq (1 + 0.1) * 100 }
    end
  end

  context 'for front suspension bike' do
    let(:bike) { MountainBike.new(type_code: :front_suspension,
      tire_width: 3, front_fork_travel: 10, base_price: 100, commission: 0.1,
      front_suspension_price: 20) }
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 3 * 0.5 + 10 * 0.3 }
    end
    describe '#price' do
      it { expect(bike.price).to eq (1 + 0.1) * 100 + 20.0 }
    end
  end

  context 'for full mountain bike' do
    let(:bike) { MountainBike.new(type_code: :full_suspension,
      tire_width: 3, front_fork_travel: 10, rear_fork_travel: 10, 
      base_price: 100, front_suspension_price: 20, rear_suspension_price: 30, commission: 0.1) }
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 3 * 0.5 + 10 * 0.3 + 10 * 0.2}
    end
    describe '#price' do
      it { expect(bike.price).to eq (1 + 0.1) * 100 + 20 + 30 }
    end
  end

  context 'for front suspension bike created by add_front_suspension ' do
    let(:bike) { MountainBike.new(
      type_code: :rigid,
      tire_width: 3, base_price: 100, commission: 0.1) }
    before { bike.add_front_suspension(
      front_fork_travel: 10,
      front_suspension_price: 20)}
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 3 * 0.5 + 10 * 0.3 }
    end
    describe '#price' do
      it { expect(bike.price).to eq (1 + 0.1) * 100 + 20.0 }
    end
  end

  context 'for full mountain bike created by add_rear_suspension' do
    let(:bike) { MountainBike.new(type_code: :rigid,
      tire_width: 3, base_price: 100, commission: 0.1) }
    before do
      bike.add_front_suspension(front_fork_travel: 10, front_suspension_price: 20)
      bike.add_rear_suspension(rear_fork_travel: 10, rear_suspension_price: 30)
    end
    describe '#off_road_ability' do
      it { expect(bike.off_road_ability).to eq 3 * 0.5 + 10 * 0.3 + 10 * 0.2}
    end
    describe '#price' do
      it { expect(bike.price).to eq (1 + 0.1) * 100 + 20 + 30 }
    end
  end


end