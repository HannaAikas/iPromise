require 'pg'
require 'twilio-ruby'
require_relative '../../twilio_tokens'

class SendText 
end

def get_info_and_send_text
  if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect(dbname: 'iPromise_test')
  else
    connection = PG.connect(dbname: 'iPromise_development')
  end

  all_promises = connection.exec("SELECT * FROM promises")

  # HARD CODED BELOW FOR NOW - REMEMBER TO REPLACE WITH = [] !!!!!!!!!!!!!!
  relevant_user_ids = [1]

  all_promises.map do |promise|
    end_date = DateTime.parse(promise['end_datetime']).to_date
    current_date = DateTime.now.to_date
    if end_date == current_date
      relevant_user_ids << promise['users_id']
    end
  end

  relevant_user_name = ""

  relevant_user_ids.each do |id|
    details_of_user = connection.exec("SELECT * FROM users WHERE id='#{id}'")
    details_of_user.map do |detail|
      relevant_user_name = detail['firstname']
    end
  end

  send_a_text(relevant_user_name)

end

def send_a_text(user_name)
  account_sid = TWILIO_ACCOUNT_SID
  auth_token = TWILIO_AUTH_TOKEN

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new(account_sid, auth_token)

  @client.messages.create(
    from: '+441442800614', # Your Twilio number
    to: '+447737700102', # Your mobile phone number
    body: "Hey there #{user_name}! Have you kept your promise?
    If YES, click: https://www.google.com
    or
    If NO, click: https://www.google.com"
  )
  # below line of code is there for testing purposes
  # in the spec tests, we want to see that it is able to reach this line of code
  return "text sent"
end
