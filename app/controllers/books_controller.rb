class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(book_show_params)
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(book_show_params)
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def update
    book = Book.find(book_show_params)
    book.update(book_params)
    redirect_to books_path
  end

  def destroy
    book = Book.find(book_show_params)
    book.destroy
    redirect_to books_path
  end

  private

    def book_show_params
      params[:id]
    end

    def book_params
      params.require(:book).permit(:title, :author, :category)
    end
end
