require 'rubygems'
require 'rspec'
require_relative 'movie'

describe Movie do
  before do
  end

  context 'REGULAR movie with 5 rented days:' do
    before { @gone_with_window = Movie.new("Gone with Window", Movie::REGULAR) }

    describe '#charge(rented_days)' do
      subject { @gone_with_window.charge(5) }
      it { should == 6.5 }
    end

    describe '#frequent_renter_points(rented_days)' do
      subject { @gone_with_window.frequent_renter_points(5) }
      it { should == 1 }
    end  
  end

  context 'NEW_RELEASE movie with 4 rented days:' do
    before { @the_gold_rush = Movie.new("The Gold Rush", Movie::NEW_RELEASE) }

    describe '#total_charge(rented_days)' do
      subject { @the_gold_rush.charge(4) }
      it { should == 12 }
    end

    describe '#frequent_renter_points(rented_days)' do
      subject { @the_gold_rush.frequent_renter_points(4) }
      it { should == 2 }
    end  


  end

end