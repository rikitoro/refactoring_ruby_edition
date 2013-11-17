require 'rspec'
require_relative 'account_type'

describe AccountType do
  context 'when created with arg :premium' do
    let(:premium_type) { AccountType.new(:premium) }
    it { expect(premium_type).to be_premium }
  end
  context 'when created with arg :normal' do
    let(:normal_type) { AccountType.new(:normal) }
    it { expect(normal_type).not_to be_premium }    
  end
end