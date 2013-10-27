require 'rubygems'
require 'rspec'
require_relative 'rental'

describe Rental do
  context 'REGULAR rental with 5 rented day' do
    before do 
      @gone_with_window = Movie.new("gone with window", RegularPrice.new)
      @rental_gww = Rental.new(@gone_with_window, 5)
    end
    describe '#charge' do
      subject { @rental_gww.charge }
      it { should == 6.5 }
    end
  end

  context 'CHILDRENS rental with 2 rented day' do
    before do 
      @micky_mouse = Movie.new("Micky Mouse", ChildrensPrice.new)
      @rental_mm = Rental.new(@micky_mouse, 2)
    end
    describe '#charge' do
      subject { @rental_mm.charge }
      it { should == 1.5 }
    end
  end


end 