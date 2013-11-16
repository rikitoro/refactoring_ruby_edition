class State

  attr_reader :state

  def state=(new_state)
    @state = new_state
  end

  def failure
    self.state = :failure
  end

  def error 
    self.state = :error
  end

  def success
    self.state = :success
  end

end