require 'rails_helper'

RSpec.describe PromisesController, type: :controller do

<<<<<<< HEAD
  let(:user) { FactoryBot.create(:user) }

  before(:each){ sign_in }
=======
  describe "GET #index" do
    it "returns http success" do
      sign_in
      get :index
      expect(response).to have_http_status(:success)
      sign_out
    end

    it 'renders the index page' do
      sign_in
      get :index
      expect(response).to render_template(:index)
      sign_out
    end

    it 'only fetch promises created by current user' do
      sign_in
      post :create, params:{ promise: { text: 'test promise 1',
                                        end_datetime: '31/01/2019',
                                        interval: '1 day'}}
      sign_out

      sign_in
      post :create, params:{ promise: { text: 'test promise 2',
                                        end_datetime: '31/01/2019',
                                        interval: '1 day'}}
>>>>>>> b906689df1656d312700e2055073f801624d4f01

      get :index
      expect(assigns(:promises).length).to eq(1)
      expect(assigns(:promises)[0].text).to eq('test promise 2')
      sign_out

    end

  end

  describe "POST #create" do
    it "save a new entry to the 'promise' database" do
      sign_in
      post :create, params:{ promise: { text: 'test promise',
                                        end_datetime: '31/01/2019',
                                        interval: '1 day'}}
      expect(Promise.find_by(text: 'test promise')).to be_truthy
      sign_out
    end
  end

end
