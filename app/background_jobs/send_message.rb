class SendMessage
  def initialize
    @msg = '******** SCHEDULER JOB PERFORMED'


  end

  def send_msg
    puts "#{@msg}"
    puts "******** #{Promise.first.text}"
  end
end
