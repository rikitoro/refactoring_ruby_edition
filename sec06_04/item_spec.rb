require 'rspec'
require_relative 'item'

describe Item do
  describe '#price' do
    context 'acm_chiken 40 quantity, 50 price' do
      before { @acm_chiken = Item.new(40, 50) }
      subject { @acm_chiken.price }
      it { should == 40 * 50 * 0.95 }
    end
    context 'cheap_chiken 40 quantity, 20 price' do
      before { @cheap_chiken = Item.new(40, 20) }
      subject { @cheap_chiken.price }
      it { should == 40 * 20 * 0.98 }
      
    end
  end
end
