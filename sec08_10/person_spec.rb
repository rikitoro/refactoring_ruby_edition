require 'rspec'
require_relative 'course'
require_relative 'person'

describe "Person#courses" do
  describe '#size' do
    context "when applying 2 courses" do
      let(:kent) { Person.new }
      before do
        courses = []
        courses << Course.new("Smalltalk Programming", false)
        courses << Course.new("Appreciating Single Malts", true)
        kent.courses = courses
      end
      it do
        expect(kent.courses.size).to eq 2
      end
    end

    context "when applying 4 courses" do
      let(:kent) { Person.new }
      before do
        courses = []
        courses << Course.new("Smalltalk Programming", false)
        courses << Course.new("Appreciating Single Malts", true)
        kent.courses = courses
        refactoring = Course.new("Refactoring", true)
        kent.courses << refactoring
        kent.courses << Course.new("Brutal Sarcasm", false)
      end
      it do
        expect(kent.courses.size).to eq 4
      end
    end

  end

  context "when applying 2 normal courses and 2 advanced courses and then remove 1 advanced course" do
    let(:kent) { Person.new }
    before do
      courses = []
      courses << Course.new("Smalltalk Programming", false)
      courses << Course.new("Appreciating Single Malts", true)
      kent.courses = courses
      refactoring = Course.new("Refactoring", true)
      kent.courses << refactoring
      kent.courses << Course.new("Brutal Sarcasm", false)
      kent.courses.delete(refactoring)
    end
    describe "#size" do
      it { expect(kent.courses.size).to eq 3}
    end
    describe "number of advanced course should eq 1" do
      it { expect(kent.courses.count(&:advanced?)).to eq 1}
    end

  end
end