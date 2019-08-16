class API::PostsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]

  def index
    posts = ['Post 1', 'Post 2']

    render json: { posts: posts }
  end

  def create
    render json: { params: params.permit(:title, :body) }
  end
end