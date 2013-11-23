require 'rspec'
require_relative 'item'

describe Item do
  describe '#total' do
    context 'when base_price = 100, tax_rate = 0.1' do
      before { @pen = Item.new(100, 0.1) }
      it { expect(@pen.total).to be_within(0.5).of(110) }
      context 'after #raise_base_price_by 10 (persent)' do
        before{ @pen.raise_base_price_by 10 } 
        it { expect(@pen.total).to be_within(0.5).of(121) } 
      end
    end 
  end
end

describe ImportedItem do
  describe '#total' do
    context 'when base_price = 100, tax_rate = 0.1, import_duty = 0.1' do
      before { @cute_pen = ImportedItem.new(100, 0.1, 0.1) }
      it { expect(@cute_pen.total).to be_within(0.5).of(120) }
      context 'after #raise_base_price_by 10 (persent)' do
        before{ @cute_pen.raise_base_price_by 10 } 
        it { expect(@cute_pen.total).to be_within(0.5).of(132) } 
      end
    end 
  end
end
