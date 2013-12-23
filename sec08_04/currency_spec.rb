require 'rspec'
require_relative 'currency'

describe Currency do
  it { expect(Currency.get(:usd)).to eq Currency.get(:usd) }
  it { expect(Currency.get(:usd)).to be_eql Currency.get(:usd) }  
  it { expect(Currency.new(:usd)).not_to eq Currency.new(:usd) }
  it { expect(Currency.new(:usd)).not_to be_eql Currency.new(:usd) }
end