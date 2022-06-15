class BlogController < ApplicationController
    def index
        @main = Blog.all
    end

    def show
        @select = Blog.find(params[:id]) 
    end
end
