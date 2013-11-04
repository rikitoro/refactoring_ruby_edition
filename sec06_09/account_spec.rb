require 'rspec'
require_relative 'account'

describe Account do
  before { @account = Account.new }
  describe '#gamma', 'with args input_val = 123, quantity = 34, year_to_date = 365' do
    subject { @account.gamma(123, 34, 365) }
    it { should  == 306401 }
    it { should_not == 122 }
  end 
end