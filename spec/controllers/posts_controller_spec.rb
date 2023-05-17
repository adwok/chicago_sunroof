require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  render_views
  describe 'POST /posts' do
    it 'responds with a post object' do
      post :create, params: {
        content: 'Flah Bucking Flah',
        user_id: 1
      }
      expected_response = {
        post: {
          content: 'Flah Bucking Flah',
          user_id: 1
        }
      }
      expect(response.body).to eq(expected_response.to_json)
    end
  end
end
