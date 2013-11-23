require 'rspec'
require_relative 'order'

describe Order do
  context 'with customer Yamato' do
    describe '#customer' do
      it { expect(Order.new("Yamato").customer).to eq "Yamato"}
    end
  end
end