class AccountType
  def initialize(type)
    @type = type
  end

  def premium?
    @type == :premium
  end
end