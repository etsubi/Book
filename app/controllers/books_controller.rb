class BooksController < ApplicationController
    def index
        @books = Book.all
    end 

    def show
        @book = Book.find(params[:id])
    end 

    def create
        @book = Book.new(book_params)

        if @book.save
            redirect_to @book
        else
            render @book.errors
        end
    end

    def update
        @book = Book.find(params[:id])

        if @book.update(book_params)
            render json: @book
        else
            render json: @book.errors
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy

    end

    private
    def book_params
        params.require(:payload).permit(:code, :name, :description, :edition, :published_date, :status)
    end
end
