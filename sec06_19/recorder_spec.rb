require 'rspec'
require_relative 'recorder'

def capture(stream)
  begin
    eval "$#{stream.to_s} = StringIO.new"
    yield
    result = eval("$#{stream.to_s}").string
  ensure 
    eval("$#{stream.to_s} = #{stream.to_s.upcase}")
  end
  result
end

describe Recorder do

  describe 'stdout of #play_for with CommandCenter' do 
    context 'after #record.start("LRMMMMRL")' do
      before do
        @rec = Recorder.new
        @rec.record.start("LRMMMMRL")
        @put_string = capture(:stdout) { @rec.play_for(CommandCenter.new) }
      end
      it { expect(@put_string).to eq "CC:start LRMMMMRL\n" }
    end
    context 'after #record.start("LRMMMMRL") #record.stop("LRMMMMRL")' do
      before do
        @rec = Recorder.new
        @rec.record.start("LRMMMMRL")
        @rec.record.stop("LRMMMMRL")
        @put_string = capture(:stdout) { @rec.play_for(CommandCenter.new) }
      end
      it { expect(@put_string).to eq "CC:start LRMMMMRL\nCC:stop LRMMMMRL\n" }
    end

  end
end