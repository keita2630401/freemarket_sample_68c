require 'rails_helper'

describe UsersController, type: :controller do

  describe 'GET #index' do
    it "renders the :index template" do
      get :index
    end
  end
end
