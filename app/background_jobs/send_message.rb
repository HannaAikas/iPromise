class SendMessage
  def initialize
    @msg = '******** SCHEDULER JOB PERFORMED'
  end

  def send_msg
    puts "#{@msg}"
  end
end
