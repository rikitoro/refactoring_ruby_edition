class Fee
  SUMMER_START = 4
  SUMMER_END = 9

  def initialize(summer_rate, winter_rate, winter_service_charge)
    @summer_rate = summer_rate
    @winter_rate = winter_rate
    @winter_service_charge = winter_service_charge
  end

  def charge(quantity, date)
    if date < SUMMER_START || date > SUMMER_END
      result = quantity * @winter_rate + @winter_service_charge
    else
      result = quantity * @summer_rate
    end
    result
  end
end