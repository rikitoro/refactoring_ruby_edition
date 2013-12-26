require 'rspec'
require_relative 'order'
require_relative 'customer'

describe Order do
  let(:bob) { Customer.new(0.2) }
  let(:book) { Order.new(1980) }
  describe '#discounted_price' do
    context 'when customer bob adds order book' do
      before { bob.add_order(book) }
      it { expect(book.discounted_price(bob)).to eq 1980 * 0.8 }
    end
  end
end