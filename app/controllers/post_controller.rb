class PostController < ApplicationController
    def index
        @posts = Post.all # 배열과 유사한 구조
    end
    
    def create
        @title = params[:title]
        @content = params[:content]
        
        Post.create(
            title: @title,
            content: @content)
    end
    
    def destroy
        @id = params[:id]
        post=Post.find(params[:id])
        post.destroy
        redirect_to '/'
        
    end
    
    def show
     @id = params[:id]
     @post=Post.find(params[:id])
    end
    
    def modify
     @id = params[:id]
     @post=Post.find(params[:id])
    end
    
    def update
        @id = params[:id]
        @post=Post.find(@id)
        @post.update(
            title: params[:title],
            content: params[:content]
            )
        redirect_to '/'
    end
end