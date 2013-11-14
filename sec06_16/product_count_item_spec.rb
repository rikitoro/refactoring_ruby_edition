require 'rspec'
require_relative 'product_count_item'

describe ProductCountItem do
  describe '#product_count_items' do

    it "with arg" do
      ProductCountItem.stub!(:find_all_by_criteria).and_return(:my_item)
      item = ProductCountItem.new(:my_criteria)
      expect(item.product_count_item(:new_criteria)).to eq :my_item
    end

  end  
end