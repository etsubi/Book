class AuthorsController < ApplicationController
def index
    @authors = Author.all
    render json: @authors
end
def show
    @author = Author.find(params[:id])
    render json: @author
end

def create
    @author = Author.new(author_params)
    if @author.save
        render json: @author
    else
        render json: @author.errors
    end
end

def update
    @author = Author.find(params[:id])
    if @author.update(author_params)
        render json: @author
    else
        render json: @author.errors
    end
end

def destroy
    @author = Author.find(params[:id])
    @author.destroy
end
end

def author_params
    params.require(:author).permit(:name, :bio, :no_of_books, :contact)
end
