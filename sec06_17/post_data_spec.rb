require 'rspec'
require_relative 'post_data'

describe PostData do
  context 'initialized with {params: "my_params", session: "my_session"}' do
    let(:my_post_data) { {params: "my_params", session: "my_session"} }
    before { @post_data = PostData.new(my_post_data) }
    describe '#params' do
      it { expect(@post_data.params).to eq "my_params" }
    end
    describe '#session' do
      it { expect(@post_data.session).to eq "my_session" }
    end
  end
  context 'initialized with {params: "my_params", session: "my_session", opt: "opt"}' do
    let(:my_post_data_with_opt) { {params: "my_params", session: "my_session", opt: "opt"} }
    before { @post_data_with_opt = PostData.new(my_post_data_with_opt) }
    describe '#params' do
      it { expect(@post_data_with_opt.params).to eq "my_params" }
    end
    describe '#session' do
      it { expect(@post_data_with_opt.session).to eq "my_session" }
    end
    describe '#opt' do
      it { expect(@post_data_with_opt.opt).to eq "opt" }
    end

  end
end