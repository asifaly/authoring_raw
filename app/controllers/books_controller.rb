class BooksController < ApplicationController

  before_action :get_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update_attributes(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :description)
  end

  def get_book
    @book = Book.find(params[:id])
  end
end
