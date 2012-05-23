class BooksController < ApplicationController
  respond_to :html

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    @book.save
    respond_with(@book, location: books_url)
  end
end
