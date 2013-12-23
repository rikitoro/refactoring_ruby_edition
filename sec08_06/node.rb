
class Network
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Node
  attr_reader :network

  def initialize(network)
    @network = network
  end
end
