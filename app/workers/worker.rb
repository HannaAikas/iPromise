require 'sidekiq'
require_relative '../background_jobs/send_message.rb'

class OurWorker
  include Sidekiq::Worker

  def perform
    new_send_msg = SendMessage.new
    new_send_msg.send_msg
  end
end
