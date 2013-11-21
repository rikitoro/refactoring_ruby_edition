require 'rspec'
require_relative 'person'


describe Person do
  let(:bob) { Person.new("Bob", "022", "333-4455") }
  let(:alice) { Person.new("Alice", "022", "666-7788") }

  describe '#telephone_number' do
    describe 'for Bob' do
      it { expect(bob.telephone_number).to eq "(022) 333-4455" }
    end
    describe 'for Alice' do
      it { expect(alice.telephone_number).to eq "(022) 666-7788" }      
    end

  end
end