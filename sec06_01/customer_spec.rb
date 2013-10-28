require 'rspec'
require_relative 'customer'

# this method is written by wycats
def capture(stream)
  begin
    stream = stream.to_s
    eval "$#{stream} = StringIO.new"
    yield
    result = eval("$#{stream}").string
  ensure
    eval("$#{stream} = #{stream.upcase}")
  end
  result
end

describe 'Customer' do
  before(:each) do
    @banner = "*************************\n" +
              "***** Customer Owes *****\n" +
              "*************************\n"
  end

  context 'Rikitoro ordered 20 amount and 15 amount orders' do
    before do
      @rikitoro = Customer.new("Rikitoro")
      @rikitoro.add_order(Order.new(20)).add_order(Order.new(15))      
    end
    describe '#print_owing' do
      subject {
        capture(:stdout) { @rikitoro.print_owing }
      }
     it { should == @banner + "name: Rikitoro\n" + "amount: 35\n" }
    end
  end

end