class TagsController < ApplicationController
    def show
        @tag = Tag.find(params[:id])
    end
    def index
        @articles = Article.all
    end
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
    
        redirect_to articles_path(index)
    end
end
