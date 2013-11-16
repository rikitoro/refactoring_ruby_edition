require 'rspec'
require_relative 'state'

describe State do
  before { @state = State.new }
  describe '#state' do
    context 'ater failure' do
      before { @state.failure }
      it { expect(@state.state).to eq :failure }
    end
    context "after error" do
      before { @state.error }
      it { expect(@state.state).to eq :error }
    end
    context "after success" do
      before { @state.success }
      it { expect(@state.state).to eq :success }
    end    
  end
end