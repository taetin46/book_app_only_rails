class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(book_show_params)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def book_show_params
      params[:id]
    end
end
