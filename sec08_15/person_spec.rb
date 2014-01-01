require 'rspec'
require_relative 'male'
require_relative 'female'

describe Male do 
  let(:bob) { Person.create_male }
  it { expect(bob).not_to be_female }
  describe '#code' do
    it { expect(bob.code).to eq 'M' }
  end
end 

describe Female do 
  let(:alice) { Person.create_female }
  it { expect(alice).to be_female }
  describe '#code' do
    it { expect(alice.code).to eq 'F' }
  end
end 