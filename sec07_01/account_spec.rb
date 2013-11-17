require 'rspec'
require_relative 'account'
require_relative 'account_type'

describe Account do
  describe '#bank_charge' do
    let (:premium_type) { AccountType.new(:premium) }
    let (:normal_type) { AccountType.new(:normal) }
    let (:days_over_a_week) { 8 }
    let (:days_within_a_week) { 6 }
    context 'for premium_type' do
      context 'when days_overdrawn > a_week' do
        subject(:alices_account) { Account.new(premium_type, days_over_a_week) }
        it { expect(alices_account.bank_charge).to eq 15.35}
      end
      context 'when days_overdrawn <= a_week' do
        subject(:bobs_account) { Account.new(premium_type, days_within_a_week) }
        it { expect(bobs_account.bank_charge).to eq 14.5}
      end
    end
    context 'for normal_type account' do
      context 'when days_overdrawn > a_week' do
        subject(:charlies_account) { Account.new(normal_type, days_over_a_week) }
        it { expect(charlies_account.bank_charge).to eq 18.5}
      end
      context 'when days_overdrawn <= a_week' do
        subject(:daves_account) { Account.new(normal_type, days_within_a_week) }
        it { expect(daves_account.bank_charge).to eq 15.0}
      end      
    end
  end
end