require 'rails_helper'

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
      post :create, params:{ promise: { text: 'test promise',
                                        end_datetime: '31/01/2019',
                                        interval: '1 day'}}
      expect(Promise.find_by(text: 'test promise')).to be_truthy
    end
  end

end
