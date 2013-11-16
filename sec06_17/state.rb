
class State

  def self.states(*args)
    args.each do |arg|
      define_method arg do
        self.state = arg
      end
    end
  end

  attr_reader :state

  def state=(new_state)
    @state = new_state
  end

  states :failure, :error, :success
end