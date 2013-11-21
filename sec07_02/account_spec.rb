require 'rspec'
require_relative 'account'

describe Account do 
  context 'when interest rate is 0.1' do
    let(:my_account) { Account.new(0.1) }
    describe '#interest_for_amount_days' do
      context 'with args: amount 100, days 365' do
        subject(:interest){ my_account.interest_for_amount_days(100, 365) }
        it { expect(interest).to eq 10}
      end   
    end
  end
end 