require 'rspec'
require_relative 'books'

describe Books do
  describe '#find' do
    before do
      #Books.stub!(:connection_find).and_return(:find_result)
    end
    it "with 1st arg :all" do
      expect(Books.find(:all)).
        to eq "SELECT * FROM books"
    end
    it "with 1st arg :all, conditions for 'title'" do
      expect(Books.find(:all, conditions: "title like '%Voodoo Economics'")).
        to eq "SELECT * FROM books WHERE title like '%Voodoo Economics'"     
    end
    it "with 1st arg :all, conditions for 'authors.name', joins :authors" do
      expect(Books.
        find(:all, conditions: "authors.name = 'Jenny James'", joins: [:authors])).
        to eq "SELECT * FROM books LEFT OUTER JOIN authors ON books.author_id  = authors.id WHERE authors.name = 'Jenny James'"

    end
    it "with 1st arg :first, conditions for 'authors.name', joins :authors" do
      expect(Books.
        find(:first, conditions: "authors.name = 'Jenny James'", joins: [:authors])).
        to eq "SELECT * FROM books LEFT OUTER JOIN authors ON books.author_id  = authors.id WHERE authors.name = 'Jenny James' LIMIT 1"          
    end
  end
end