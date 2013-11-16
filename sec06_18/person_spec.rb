require 'rspec'
require_relative 'person'

describe Person do
  context "when name = nil, age = nil" do
    before do
      @john = Person.new
    end
    it {expect(@john).to be_empty_name}
    it {expect(@john).to be_empty_age}
  end
  context 'when name = "Bob", age = nil' do
    before do
      @bob = Person.new
      @bob.name = "Bob"
    end
    it {expect(@bob).not_to be_empty_name}
    it {expect(@bob).to be_empty_age}
  end 
  context 'when name = "Alice", age = 20' do
    before do
      @alice = Person.new
      @alice.name = "Alice"
      @alice.age = 20
    end
    it {expect(@alice).not_to be_empty_name}
    it {expect(@alice).not_to be_empty_age}
  end 

end