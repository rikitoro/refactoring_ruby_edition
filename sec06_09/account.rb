class Account
  def gamma(input_val, quantity, year_to_date)
    import_value1 = (input_val * quantity) + delta
    import_value2 = (input_val * year_to_date) + 100
    if (year_to_date - import_value1) > 100
      import_value2 -= 20
    end
    import_value3 = import_value2 * 7
    import_value3 - 2 * import_value1
  end

  def delta
    100
  end
  
end