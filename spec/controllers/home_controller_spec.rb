require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  before(:each){ sign_in }

  describe "GET #index" do
    xit "returns http success" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

end
