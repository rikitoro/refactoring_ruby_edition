require 'rspec'
require_relative 'order'
require_relative 'customer'

describe Order do
  let(:bob) { Customer.new }
  let(:book) { Order.new }
  describe '#customer' do
    context 'when customer bob adds order book' do
      before { bob.add_order(book) }
      it 'book.customer should eq bob' do
        expect(book.customer).to eq bob
      end
    end
  end
end