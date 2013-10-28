require 'rspec'
require_relative 'item'

describe 'Item' do

  context 'acms_chicken with 50 quantity and 40 price' do
    before do
      quantity = 50
      price = 40
      @acms_chicken = Item.new(quantity, price)
    end
    describe '#price' do
      subject { @acms_chicken.price }
     it { should == 1900 }
    end
  end

  context 'cheap_chicken with 50 quantity and 18 price' do
    before do
      quantity = 50
      price = 18
      @acms_chicken = Item.new(quantity, price)
    end
    describe '#price' do
      subject { @acms_chicken.price }
     it { should == 18 * 50 * 0.98 }
    end
  end


end

