# frozen_string_literal: true

##
# This is a logger. Logs can be found at '/.../proto/log'
class Logger
  def initialize
    @log_dir = File.expand_path('../../log/log.txt', File.dirname(__FILE__)).to_str
  end

  def info(msg)
    msg = format_msg(msg)
    File.write(@log_dir, msg, mode: 'a')
    puts(msg)
  end

  def format_msg(msg)
    time = Time.now.getutc
    fmsg = ''.dup
    fmsg << time.to_s
    fmsg << '|'
    fmsg << 'INFO '
    fmsg << msg
    fmsg << "\n"
  end
end
