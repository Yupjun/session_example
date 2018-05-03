class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    title = params[:title]
    body = params[:body]
    if not title.nil?
      tmp = Post.new(title: title,body: body)
      if tmp.save
        redirect_to '/'
      end
    end
  end

  def delete
  end
end
