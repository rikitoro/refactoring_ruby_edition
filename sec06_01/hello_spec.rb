require "rspec"

class Target
  def some_method(msg)
    puts msg
    puts "*****"
  end
end

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

describe "Object#capture" do
  before(:each) do
    @target = Target.new
  end

  describe "some_method" do
    subject {
      capture(:stdout) { @target.some_method("test") }
    }
    it { should == "test\n*****\n" }
  end

end