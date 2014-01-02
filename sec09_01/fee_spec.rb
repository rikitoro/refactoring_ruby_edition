require 'rspec'
require_relative 'fee'

describe Fee do 
  describe '#charge' do
    context 'when winter season' do
      let(:winter_fee) { Fee.new(10, 20, 30) }
      it 'should winter charge for date = 3' do
        expect(winter_fee.charge(10, 3)).to eq 20 * 10 + 30
      end
      it 'should winter charge for date = 10' do
        expect(winter_fee.charge(10, 10)).to eq 20 * 10 + 30
      end
    end

    context 'when summer reason' do
      let(:summer_fee) { Fee.new(10, 20, 30) }
      it 'should winter charge for date = 4' do
        expect(summer_fee.charge(10, 4)).to eq 10 * 10 
      end
      it 'should winter charge for date = 9' do
        expect(summer_fee.charge(10, 9)).to eq 10 * 10
      end
    end
  end
end