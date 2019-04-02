class BooksController < ApplicationController
  def index
    @books = Book.all
    hako = Hako.new(array_hash)
    puts "hakoだよーーーーー"
    puts @hoge
    puts hako.inspect
    puts "attr_hogeだよーーーーー"
    puts hako.ko
    puts "koだよーーーーー"
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

    def array_hash
      [
        { 
          'id': 1,
          'many': [
            {
              'many_id': 10,
              'name': 'many_1'
            },
            {
              'many_id': 20,
              'name': 'many_2'
            }
          ]
        }
      ]
    end
end
