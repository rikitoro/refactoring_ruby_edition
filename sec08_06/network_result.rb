class NetworkResult
  attr_reader :old_networks
  
  def [](attribute)
    instance_variable_get "@#{attribute}"
  end

  def []=(attribute, value)
    instance_variable_set "@#{attribute}", value
  end
  
  def initialize
    @old_networks = []
    @nodes = []
  end
end