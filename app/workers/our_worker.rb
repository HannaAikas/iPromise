require 'sidekiq'
require_relative '../background_jobs/send_message.rb'

class OurWorker
  include Sidekiq::Worker

  def perform
    new_send_msg = Reminder.new
    new_send_msg.iterate_database
  end
end
