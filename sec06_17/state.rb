class State

  attr_reader :state

  def state=(new_state)
    @state = new_state
  end

  [:failure, :error, :success].each do |method|
    define_method method do
      self.state = method
    end
  end

end