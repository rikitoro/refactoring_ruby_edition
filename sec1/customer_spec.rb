require 'rubygems'
require 'rspec'
require_relative 'customer'

describe Customer do
  before do
    @gone_with_window = Movie.new("Gone with Window", RegularPrice.new)
    @rental_gww = Rental.new(@gone_with_window, 5)
    @the_gold_rush = Movie.new("The Gold Rush", NewReleasePrice.new)
    @rental_tgr = Rental.new(@the_gold_rush, 5)
    @yoshiaki = Customer.new("yoshiaki")
  end

  context '1 REGULAR rental with 5 rented days:' do
    before { @yoshiaki.add_rental(@rental_gww) }

    describe '#total_charge' do
      subject { @yoshiaki.total_charge }
      it { should == 6.5 }
    end

    describe '#total_frequent_renter_points' do
      subject { @yoshiaki.total_frequent_renter_points }
      it { should == 1 }
    end
  end

  context '1 REGULAR and 1 NEW_RELEASE rentals with 5 rented days:' do 
    before do
      @yoshiaki.add_rental(@rental_gww) 
      @yoshiaki.add_rental(@rental_tgr)
    end

    describe '#total_charge' do
      subject { @yoshiaki.total_charge }
      it { should == 21.5 }
    end

    describe '#total_frequent_renter_points' do
      subject { @yoshiaki.total_frequent_renter_points }
      it { should == 3 }
    end
  end

end