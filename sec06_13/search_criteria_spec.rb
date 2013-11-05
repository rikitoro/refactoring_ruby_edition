require 'rspec'
require_relative 'search_criteria'

describe SearchCriteria do 
  context 'with author_id = 1, publisher_id = 3, isbn = "1234567890"' do
    before {
      @sc = SearchCriteria.
      new({author_id: 1, publisher_id: 3, isbn: "1234567890"})
    }
    describe '#author_id' do
      it { expect(@sc.author_id).to eq 1 }
    end
    describe '#publisher_id' do
      it { expect(@sc.publisher_id).to eq 3 }
    end
    describe '#isbn' do
      it { expect(@sc.isbn).to eq "1234567890" }
    end
  end
end