require 'clockwork'
require_relative './boot'
require_relative './environment'
require_relative '../app/workers/our_worker.rb'
require_relative '../app/background_jobs/reminder.rb'

module Clockwork
  handler do |job|
    puts "Running #{job}"
  end

  # every(2.minutes, 'Check and send out messages', tz: 'UTC'){
  #   OurWorker.perform_async
  # }

  every(2.minutes, 'Check and send out message', tz: 'UTC'){
    new_send_msg = Reminder.new
    new_send_msg.iterate_database
  }

end
