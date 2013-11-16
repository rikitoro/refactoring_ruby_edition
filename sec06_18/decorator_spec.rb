require 'rspec'
require_relative 'decorator'

describe Decorator do
  before do
    mock_subject = double("mock_subject")
    mock_subject.stub(:my_method).and_return(3)
    @decorator = Decorator.new(mock_subject)
  end

  it { expect(@decorator.my_method(1, 2) {|a, b| a + b }).
    to eq 3 }
end