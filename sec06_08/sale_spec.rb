require 'rspec'
require_relative 'sale'

describe Sale do 
  before { @sale = Sale.new }
  describe '#discount' do 
    it 'with args input_val = 100, quantity = 50, year_to_date = 100 returns 98' do
      expect(@sale.discount(100, 50, 100)).to eq(98)
    end 
    it 'with args input_val = 100, quantity = 200, year_to_date = 100 returns 97' do
      expect(@sale.discount(100, 200, 100)).to eq(97)
    end 
    it 'with args input_val = 100, quantity = 200, year_to_date = 20000 returns 93' do
      expect(@sale.discount(100, 200, 20000)).to eq(93)
    end 
    it 'with args input_val = 50, quantity = 200, year_to_date = 20000 returns 45' do
      expect(@sale.discount( 50, 200, 20000)).to eq(45)
    end 
  end
end