require_relative '../../app/models/send_text'

describe 'sending a text' do
  it 'gets info from database to insert into text message' do
    expect(get_info_and_send_text).to eq 'text sent'
  end
end
