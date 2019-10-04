require 'rails_helper'

RSpec.describe PromisesController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  before(:each) do
    sign_in
  end
  
  # describe 'index' do
  #   it 'responds with 200' do
  #     get :new
  #     expect(response).to have_http_status(200)
  #   end
  # end

  # describe 'create' do
  #   it 'redirects to promises path' do
  #     post :create, params: { promise: { text: 'This is a promise 1' } }

  #     expect(response).to redirect_to(promises_path)
  #   end

  #   it 'creates a new promise' do
  #     post(:create, params: { promise: { text: 'This is a promise 2' } }, session: { user_id: user.id })

  #     binding.pry

  #     # work out how to add the session and sign into the user
  #     # User cannot be found in session on the model

  #     expect(response).to redirect_to(promises_path)
  #   end
  # end
  
  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end

    it 'renders the index page' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end


