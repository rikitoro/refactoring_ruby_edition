require 'rspec'
require_relative 'order'

describe Order do
  context 'with customer Yamato' do
    describe '#customer_name' do
      it { expect(Order.new("Yamato").customer_name).to eq "Yamato"}
    end
  end
end

