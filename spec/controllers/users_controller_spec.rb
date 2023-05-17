require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views
  describe 'POST /users' do
    it 'create a new user object' do
      post :create, params: { 
        username: 'adwok',
        email: 'djadwok@gmail.com',
        first_name: 'Adam',
        last_name: 'Chan' 
      }
      expect(User.count).to eq(1)
    end
    it 'responds with a user object' do
      post :create, params: { 
        username: 'adwok',
        email: 'djadwok@gmail.com',
        first_name: 'Adam',
        last_name: 'Chan' 
      }
      expected_response = {
        user: { 
          username: 'adwok',
          email: 'djadwok@gmail.com',
          first_name: 'Adam',
          last_name: 'Chan' 
        }
      }
      expect(response.body).to eq(expected_response.to_json)
    end
  end
end