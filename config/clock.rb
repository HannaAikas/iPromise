require 'clockwork'
require_relative './config/boot'
require_relative './config/environment'
require_relative '../app/workers/worker.rb'

module Clockwork
  handler do |job|
    puts "Running #{job}"
  end

  every(2.minutes, 'Check and send out messages', tz: 'UTC'){
    OurWorker.perform_async
  }

end
