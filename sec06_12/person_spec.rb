require 'rspec'
require 'date'
require_relative 'person'

describe Person do
  context 'Alice has two children Bob and Charly' do
    before do
      @alice = Person.new('Alice', Date.new(1950, 1, 1))
      @bob = Person.new('Bob', Date.new(1980, 1, 1), nil, @alice)
      @charly = Person.new('Charlie', Date.new(1982, 5, 5), nil, @alice)
    end
    describe 'About Alice:' do
      it 'her name is Alice' do
        expect(@alice.name).to eq 'Alice'
      end
      it 'number of her children is 2' do
        expect(@alice.children.length).to eq 2
      end
      it 'she has two children, Bob and Charlie' do
        expect(@alice.children.map { |child| child.name } ).to include('Bob', 'Charlie')
      end
    end
  end

  context 'Eve is now alive but Dave is already dead' do
    before do
      @eve = Person.new('Eve', Date.new(1986, 9, 9))
      @dave = Person.new('Dave', Date.new(1984, 6, 6), Date.new(2004, 7, 7))
    end
    it 'Eve is alive' do
      expect(@eve).to be_alive
    end
    it 'Dave is already dead' do
      expect(@dave).not_to be_alive
    end
  end

  context 'Alice had four children Bob, Charlie, Dave and Eve.', 
    'But Dave is already dead.',
    'And Eve has two children Bob(same name with his uncle) and Frank' do
    before do
      @alice = Person.new('Alice', Date.new(1950, 1, 1))
      @bob = Person.new('Bob', Date.new(1980, 1, 1), nil, @alice)
      @charly = Person.new('Charlie', Date.new(1982, 5, 5), nil, @alice)
      @dave = Person.new('Dave', Date.new(1983, 4, 6), Date.new(2010, 7, 7), @alice)
      @eve = Person.new('Eve', Date.new(1985, 6, 6), nil, @alice)
      @bob1 = Person.new('Bob', Date.new(2008, 10, 11), nil, @eve)
      @frank = Person.new('Frank', Date.new(2013, 12, 5), nil, @eve)
    end
    describe 'for Alice' do
      it 'she has 6 living descendants.' do 
        expect(@alice.number_of_living_descendants).to eq 5
      end
      it 'she has no descendants named Zoe.' do
        expect(@alice.number_of_descendants_named('Zoe')).to eq 0
      end      
      it 'she has 2 descendants named Bob.' do
        expect(@alice.number_of_descendants_named('Bob')).to eq 2
      end
    end
    describe 'for Eve' do
      it 'she has 2 living descendants.' do 
        expect(@eve.number_of_living_descendants).to eq 2
      end
      it 'she has no descendants named Zoe.' do
        expect(@eve.number_of_descendants_named('Zoe')).to eq 0
      end      
      it 'she has 1 descendants named Bob.' do
        expect(@eve.number_of_descendants_named('Bob')).to eq 1
      end
    end

  end
end