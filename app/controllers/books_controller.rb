class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @creator = Creator.find(params[:id])
    @books = Book.all
    @books_by_creator = @books.select { |b| b.creator_id == @creator.id }
  end

  def new
    @book = Book.new
    @creator = Creator.find(params[:creator_id])
  end

  def create
    @creator = Creator.find(params[:creator_id])

    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: "book was created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to book_url, notice: "Deleted book successfully"
  end

  private


  def book_params
    params.require(:book).permit(:title, :pages)
  end
end
