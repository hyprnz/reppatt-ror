class Comment22sController < ApplicationController
    def initialize(articleRepository = Article22Repository.new, commentRepository = Comment22Repository.new)
        super()
        @articleRepository = articleRepository
        @commentRepository = commentRepository
    end

    def create
        @article = @articleRepository.find(params[:article22_id])
        @comment = @article.create_comment(comment_params)
        @commentRepository.save(@comment)
        redirect_to article22_path(@article)
    end

    def destroy
        @article = @articleRepository.find(params[:article22_id])
        @comment = @commentRepository.find(params[:id]) # @article.comments.find(params[:id])
        @commentRepository.destroy(@comment.id)
        redirect_to article22_path(@article)
    end

    private

    def comment_params
        params.require(:comment22).permit(:commenter, :body)
    end
end
