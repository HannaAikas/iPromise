require 'date'
require_relative './text_sender'

class Reminder

  def initialize(text_sender=TextSender.new)
    @text_sender = text_sender
  end

  def iterate_database
    puts "Checking promise database..."
    Promise.all.each do |promise|
      process(promise)
    end
    puts "Iterate done!!"
  end

  def process(promise)

    puts "DEBUG STATUS: #{promise.status}"
    return if promise.status == false

    current_time = Time.now.utc
    one_day_timedifference = 60*2

    user_id = promise.user_id
    puts "DEBUG: USERID #{user_id}"
    user_info = User.find(user_id)
    user_mobile = user_info.mobile
    user_name = user_info.firstname

    puts "current_time: #{current_time}"
    puts "last_time: #{promise.last_reminder_time.to_time}"
    puts "diff: #{current_time - promise.last_reminder_time.to_time}"
    puts "end_time: #{promise.end_datetime.to_time}"

    # check and send out final message
    if promise.end_datetime.to_time <= current_time
      puts "Sending final text and close promise..."
      @text_sender.send_text(user_mobile, "Hey there #{user_name}! Have you kept your promise?
        If YES, click: cryptic-thicket-87200.herokuapp.com/promises/#{promise.id}/congrats
        or If NO, click: cryptic-thicket-87200.herokuapp.com/promises/#{promise.id}/punishment")
      puts "final message sent"
      promise.status = 'false'
      promise.save
      puts "promise closed"
      return
    end

    # check and send out reminder
    if current_time - promise.last_reminder_time.to_time > one_day_timedifference
      puts "Sending reminder..."
      promise_content = promise.text
      promise_content = promise.other_text if promise_content == 'Other'

      @text_sender.send_text(user_mobile, "Here is your promise: #{promise_content}")
      promise.last_reminder_time = current_time
      promise.save
      puts "reminder sent"
    end

    puts "Finishing processing current promise..."
  end

end
