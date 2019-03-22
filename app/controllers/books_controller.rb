class BooksController < ApplicationController
  before_action :find_resource, only: [:show, :edit, :destroy, :update]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def update
    @book.update(book_params)
    redirect_to books_path
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  def show; end
  def edit; end

  private

    def book_show_params
      params[:id]
    end

    def book_params
      params.require(:book).permit(:title, :author, :category)
    end

    def find_resource
      @book = Book.find(book_show_params)
    end
end
