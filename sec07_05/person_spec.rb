require 'rspec'
require_relative 'person'

describe Person do
  context 'When Bob\'s department is Sales,' do
    context 'and when Alice is the manager of Sales Dept.' do
      before do
        @alice = Person.new
        @bob = Person.new
        @sales_dept = Department.new(@alice)
        @alice.department = @sales_dept
        @bob.department = @sales_dept
      end
      describe 'bob#manager' do
        it {expect(@bob.manager).to eq @alice}
      end
    end
  end
end