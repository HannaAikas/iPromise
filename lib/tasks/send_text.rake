namespace :custom do
  desc "This sends a text!"

  task :send_text do
    require_relative '../../app/models/send_text'
    get_info_and_send_text
  end
end
