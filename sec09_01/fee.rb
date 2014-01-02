class Fee
  SUMMER_START = 4
  SUMMER_END = 9

  def initialize(summer_rate, winter_rate, winter_service_charge)
    @summer_rate = summer_rate
    @winter_rate = winter_rate
    @winter_service_charge = winter_service_charge
  end

  def charge(quantity, date)
    return winter_charge(quantity) if not_summer(date)
    summer_charge(quantity)
  end

  def not_summer(date)
    date < SUMMER_START || date > SUMMER_END
  end

  def winter_charge(quantity)
    quantity * @winter_rate + @winter_service_charge
  end

  def summer_charge(quantity)
    quantity * @summer_rate
  end
end