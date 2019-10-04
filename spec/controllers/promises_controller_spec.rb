require 'rails_helper'
require 'date'

RSpec.describe PromisesController, type: :controller do

  let(:user) { FactoryBot.create(:user) }

  before(:each){ sign_in }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "save a new entry to the 'promise' database" do
      dt = DateTime.new(2010,1,1)
      allow(DateTime).to receive(:now).and_return(dt)

      post :create, params:{ promise: { text: 'test promise',
                                        end_datetime: '31/01/2019',
                                        interval: '1 day'}}
      result_promise = Promise.find_by(text: 'test promise')
      expect(result_promise.text).to eq('test promise')
      expect(result_promise.last_reminder_time).to eq(DateTime.new(2010,1,1))
    end
  end

end
