require 'rails_helper'

describe API::PostsController, type: :controller do
  describe "GET index" do
    it 'renders all posts' do
      posts = ['Post 1', 'Post 2']
      get :index
      expect(response.body).to eq({ posts: posts}.to_json)
    end
  end
end