require 'rspec'
require_relative 'item'

describe Item do
  context 'when 100 quantity, 50 price' do
    describe '#price' do
      before { @acm_chicken = Item.new(100, 50) }
      subject { @acm_chicken.price }
      it { should == 100 * 50 - 0 + 100}
    end
  end

  context 'when 10 quantity, 50 price' do
    describe '#price' do
      before { @acm_banana = Item.new(10, 50) }
      subject { @acm_banana.price }
      it { should == 10 * 50 - 0 + 10 * 50 * 0.1}
    end
  end

  context 'when 1000 quantity, 40 price' do
    describe '#price' do
      before { @acm_cookie = Item.new(1000, 40) }
      subject { @acm_cookie.price }
      it { should == 1000 * 40 - 500 * 40 * 0.05 + 100}
    end
  end

end