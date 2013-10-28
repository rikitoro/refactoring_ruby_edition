require 'rspec'
require_relative 'select'

describe Select do

  describe '#options' do
    context 'when add 1999, 2000, 2001' do
      before do
        @select = Select.new
        @select.add(1999)
        @select.add(2000)
        @select.add(2001)
      end
      subject { @select.options }
      it { should =~ [1999, 2000, 2001] }
    end
    context 'when add options 1999, 2000, 2001 by chain' do
      before do
        @select = Select.new
        @select.add(1999).add(2000).add(2001)
      end
      subject { @select.options }
      it { should =~ [1999, 2000, 2001] }
    end
    context 'when with_option(100)' do
      before do
        @select = Select.with_option(100)
      end
      subject { @select.options }
      it { should =~ [100] }
    end
    context 'when with_option(11).add(22).add(33)' do
      before do
        @select = Select.with_option(11).add(22).add(33)
      end
      subject { @select.options }
      it { should =~ [11, 33, 22] }
    end
  end
end