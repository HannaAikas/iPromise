require 'date'
require_relative './text_sender'

class Reminder
  DEFAULT_FREQ = 120

  def initialize(text_sender=TextSender.new, freq=DEFAULT_FREQ)
    @text_sender = text_sender
    @freq = freq
    @current_promise = nil
  end

  def iterate_database
    Promise.all.each do |promise|
      @current_promise = promise
      process()
    end
  end

  def send_final_message(mobile, name)
      @text_sender.send_text(mobile, "Hey there #{name}! Have you kept your promise?
        If YES, click: cryptic-thicket-87200.herokuapp.com/promises/#{@current_promise.id}/congrats
        or If NO, click: cryptic-thicket-87200.herokuapp.com/promises/#{@current_promise.id}/punishment")
      @current_promise.status = 'false'
      @current_promise.save
  end

  def send_reminder(mobile, name)
    promise_content = promise.text
    promise_content = promise.other_text if promise_content == 'Other'
    @text_sender.send_text(mobile, "Here is your promise: #{promise_content}")
    @current_promise.last_reminder_time = Time.now.utc
    @current_promise.save
  end

  def process
    return if @current_promise.status == false

    user_info = User.find(@current_promise.user_id)
    user_mobile = user_info.mobile
    user_name = user_info.firstname

    if @current_promise.end_datetime.to_time <= Time.now.utc
      send_final_message(user_mobile, user_name)
      return
    end

    if current_time - promise.last_reminder_time.to_time > @freq
      send_reminder(user_mobile, user_name)
    end
  end
end
