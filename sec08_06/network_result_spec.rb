require 'rspec'
require_relative 'node'
require_relative 'network_result'

describe "new_network[:name]" do
  it do
    node1 = Node.new(Network.new("potosnet"))
    node2 = Node.new(Network.new("earthnet"))
    new_network = NetworkResult.new
    new_network[:nodes] << node1
    new_network[:nodes] << node2
    new_network.old_networks << node1.network
    new_network.old_networks << node2.network
     
    new_network[:name] = new_network[:old_networks].map(&:name).join(" - ")

    expect(new_network[:name]).to eq 'potosnet - earthnet'
  end
end 