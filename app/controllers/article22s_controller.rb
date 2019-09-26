require_relative '../repositories/article22_repository'

class Article22sController < ApplicationController
    def initialize(repository = Article22Repository.new)
        super()
        @repository = repository
    end

    def index
        @articles = @repository.all
    end

    def show
        @article = @repository.find(params[:id])
    end

    def new
        @article = Article22.new(title: "", text: "")
    end

    def edit
        @article = @repository.find(params[:id])
    end

    def create
        @article = Article22.new(article22_params)

        if @repository.save(@article)
            redirect_to @article
        else
            render 'new'
        end
    end

    def update
        @article = @repository.find(params[:id])

        if @repository.update(article22_params)
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @repository.destroy(params[:id])
        redirect_to articles_path
    end

    private

    def article22_params
        params.require(:article22).permit(:title, :text)
    end
end
