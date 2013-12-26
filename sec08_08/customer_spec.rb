require 'rspec'
require_relative 'order'
require_relative 'customer'

describe Customer do
  let(:bob) { Customer.new(0.2) }
  let(:book) { Order.new(1980) }
  describe '#proce_for' do
    context 'when customer bob adds order book' do
      before { bob.add_order(book) }
      it "book should eq book's discounted price" do
        expect(bob.price_for(book)).to eq book.discounted_price(bob)
      end
    end
  end
end