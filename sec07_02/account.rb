require 'forwardable'

class AccountType
  attr_accessor :interest_rate

  def initialize(interest_rate)
    self.interest_rate = interest_rate   
  end
end

class Account

  extend Forwardable
  def_delegators :@account_type, :interest_rate, :interest_rate=

  def initialize(account_type)
    @account_type = account_type
  end

  def interest_for_amount_days(amount, days)
    interest_rate * amount * days / 365
  end

end