class CommentController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comment.create(comment_params)
        redirect_to article_path(@article)
    end

    def update 
        @article = Article.find(params[:article_id])
        @comment = @article.comment.create(comment_params)
        redirect_to article_path(@article)
    end
    private
        def comment_params
            params.require(:comment).permit(:username, :body)
        end
end