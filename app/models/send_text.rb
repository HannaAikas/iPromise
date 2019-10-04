
  # def account_info
  #   account_sid = TWILIO_ACCOUNT_SID
  #   auth_token = TWILIO_AUTH_TOKEN
    
  #   # set up a client to talk to the Twilio REST API
  #   @client = Twilio::REST::Client.new account_sid, auth_token
  # end

  def send_a_text
    require 'twilio-ruby'
    require_relative '../../twilio_tokens'
    
    account_sid = TWILIO_ACCOUNT_SID
    auth_token = TWILIO_AUTH_TOKEN
    
    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @client.messages.create(
      from: '+441442800614', # Your Twilio number
      to: '+447757748252', # Your mobile phone number
      body: 'Hey there! Have you kept to your promise. 
      click https://www.google.com for YES or https://www.google.com for NO'
    ) 
  end