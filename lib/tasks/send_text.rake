namespace :custom do
  desc "This sends a text!"

  task :send_text do
    require_relative '../../app/models/send_text'
    send_a_text
  end
end