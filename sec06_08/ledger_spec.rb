require 'rspec'
require_relative 'ledger'

describe Ledger do
  describe 'ledger', 'with balance = 100' do
    before { @ledger = Ledger.new(100) }
    it '#balance returns 100 with no add operations' do
      expect(@ledger.balance).to eq(100)
    end
    it '#balance returns 150 after add(50) operation' do
      @ledger.add(50)
      expect(@ledger.balance).to eq(150)
    end
    it '#balance returns 50 after add(-50) operation' do
      @ledger.add(-50)
      expect(@ledger.balance).to eq(50)
    end

  end
end