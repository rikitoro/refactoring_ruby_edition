require_relative 'message_collector'




class Recorder

  def record
    @message_collector ||= MessageCollector.new
  end

  def play_for(obj)
    @message_collector.messages.inject(obj) do |result, message| 
      result.send message.first, *message.last  
    end
  end

  def to_s
    message_collector.messages.inject([]) do |result, message|
      result << "#{message.first}(args: #{message.last.inspect})"
    end.join(".")
  end
end

class CommandCenter
  def start(command_string)
    puts "CC:start #{command_string}"
    self
  end

  def stop(command_string)
    puts "CC:stop #{command_string}"
    self
  end
end 

#recorder = Recorder.new
#recorder.start("LRMMMMRL")
#recorder.stop("LRMMMMRL")
#recorder.play_for(CommandCenter.new)