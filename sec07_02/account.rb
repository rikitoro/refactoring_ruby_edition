class AccountType
  attr_accessor :interest_rate

  def initialize(interest_rate)
    @interest_rate = interest_rate
  end
end

class Account
  def initialize(account_type)
    @account_type = account_type
  end

  def interest_for_amount_days(amount, days)
    @account_type.interest_rate * amount * days / 365
  end
end