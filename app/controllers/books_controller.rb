class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to　book_path(book_id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
  end
  
  
  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
