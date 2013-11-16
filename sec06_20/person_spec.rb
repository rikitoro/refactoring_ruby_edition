require 'rspec'
require_relative 'person'


describe Person do 

  context "when default emails, employee_number" do
    before(:each) do
      EmployeeNumberGenerator ||= double()
      EmployeeNumberGenerator.stub(:next).and_return(1234)
      @john = Person.new
    end
    it { expect(@john.emails).to eq [] }
    it { expect(@john.employee_number).to eq 1234}
  end
end