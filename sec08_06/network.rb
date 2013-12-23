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

node1 = Node.new(Network.new("potosnet"))
node2 = Node.new(Network.new("earthnet"))
new_network = { nodes: [], old_networks: [] }
new_network[:nodes] << node1
new_network[:nodes] << node2
new_network[:old_networks] << node1.network
new_network[:old_networks] << node2.network
 
new_network[:name] = new_network[:old_networks].map(&:name).join(" - ")

puts new_network[:name]