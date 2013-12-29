require 'rspec'
require_relative 'course'
require_relative 'person'

describe "Person#courses" do
  describe '#size' do
    context "when applying 2 courses" do
      let(:kent) { Person.new }
      before do
        kent.add_course(Course.new("Smalltalk Programming", false))
        kent.add_course(Course.new("Appreciating Single Malts", true))
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
        kent.initialize_courses(courses)
        kent.add_course(Course.new("Refactoring", true))
        kent.add_course(Course.new("Brutal Sarcasm", false))
      end
      it do
        expect(kent.number_of_courses).to eq 4
      end
    end

  end

  context "when applying 2 normal courses and 2 advanced courses and then remove 1 advanced course" do
    let(:kent) { Person.new }
    before do
      courses = []
      courses << Course.new("Smalltalk Programming", false)
      courses << Course.new("Appreciating Single Malts", true)
      kent.initialize_courses(courses)
      refactoring = Course.new("Refactoring", true)
      kent.add_course(refactoring)
      kent.add_course(Course.new("Brutal Sarcasm", false))
      kent.remove_course(refactoring)
    end
    describe "#size" do
      it { expect(kent.number_of_courses).to eq 3}
    end
    describe "number of advanced course should eq 1" do
      it { expect(kent.number_of_advanced_courses).to eq 1}
    end

  end
end