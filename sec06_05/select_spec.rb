require 'rspec'
require_relative 'select'

describe Select do
  describe '#options' do
    context 'when add options 1999, 2000, 2001' do
      before do
        @select = Select.new
        @select.add_option(1999)
        @select.add_option(2000)
        @select.add_option(2001)
      end
      subject { @select.options }
      it { should =~ [1999, 2000, 2001] }
    end
  end
end