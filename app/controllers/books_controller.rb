class BooksController < ApplicationController
  def new
    @book = Book.new
    #投稿とindexが同画面ならここ記載？@books=Book.all
    
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/books'
  end

  def index
    #投稿とindexが同画面ならここ記載？@book=Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id]) 
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
    
    

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
