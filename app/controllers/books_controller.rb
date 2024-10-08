class BooksController < ApplicationController
  before_action :set_creator, only: %w[new create]
  def index
    @books = Book.all
  end

  def show
    @creator = Creator.find(params[:id])
    @books = Book.all
    @books_by_creator = @books.select { |b| b.creator_id == @creator.id }
  end

  def new
    @creator = Creator.find(params[:creator_id])
    @book = @creator.books.build
  end

  def create
    @creator = Creator.find(params[:creator_id])
    @book = @creator.books.build(book_params)  # Asegura que el libro esté vinculado al creator

    if @book.save
      redirect_to book_path(@creator.id), notice: "Book was created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to book_url, notice: "Deleted book successfully"
  end


  def edit
    if params[:creator_id]
      @creator = Creator.find(params[:creator_id])
      @book = @creator.books.find(params[:id])
    else
      @book = Book.find(params[:id])
    end
  end

  def update
    if params[:creator_id]
      @creator = Creator.find(params[:creator_id])
      @book = @creator.books.find(params[:id])
    else
      @book = Book.find(params[:id])
    end

    if @book.update(book_params)
      redirect_to book_path(@book.creator_id), notice: 'Book was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_creator
    @creator = Creator.find(params[:restaurant_id]) if params[:creator].present?
  end

  def book_params
    params.require(:book).permit(:title, :pages, :publisher, :genre, :rating)
  end
end
