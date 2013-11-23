require 'rspec'
require_relative 'order'

describe Order do
  before { Customer.load_customers}
  context 'with customer Lemon Car Hire' do
    describe '#customer_name' do
      it { expect(Order.new("Lemon Car Hire").customer_name).to eq "Lemon Car Hire"}
    end
  end
end

