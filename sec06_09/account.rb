class Account
  def gamma(input_val, quantity, year_to_date)
    Gamma.new(self, input_val, quantity, year_to_date).compute
  end

  def delta
    100
  end
  
end

class Gamma
  attr_reader :account, :input_val, :quantity, :year_to_date, 
    :import_value1, :import_value2, :import_value3

  def initialize(account, input_val, quantity, year_to_date)
    @account = account
    @input_val = input_val
    @quantity = quantity
    @year_to_date = year_to_date
  end

  def compute
    @import_value1 = (@input_val * @quantity) + @account.delta
    @import_value2 = (@input_val * @year_to_date) + 100
    if (@year_to_date - @import_value1) > 100
      @import_value2 -= 20
    end
    @import_value3 = @import_value2 * 7
    @import_value3 - 2 * @import_value1
  end
end