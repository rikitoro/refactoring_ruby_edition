require 'rspec'
require_relative 'currency'

describe Currency do
  it { expect(Currency.new(:usd)).to eq Currency.new(:usd) }
  it { expect(Currency.new(:usd)).to be_eql Currency.new(:usd) }
end