  require 'pg'
  require 'twilio-ruby'
  require_relative '../../twilio_tokens'

  attr_reader :name

  def intialize(name:)
    @name = name
  end
  
  def get_info
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'iPromise_test')
    else
      connection = PG.connect(dbname: 'iPromise_development')
    end

    result = connection.exec("SELECT * FROM promises")
    p results
    result.map do |promise|
      end_date = DateTime.parse(promise['end_datetime']).to_date
      current_date = DateTime.now.to_date
      if end_date == current_date
        print promise['users_id']
      end
    end
  end


  def send_a_text
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
 # firstname:
 # mobile: