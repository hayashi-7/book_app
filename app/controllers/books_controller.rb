class BooksController < ApplicationController
  before_action :set_book, only: %i[edit show update destroy]
  def index
    @books = Book.order('created_at DESC').page(params[:page]).per(9)
      if params[:tag]
        @books = Book.tagged_with(params[:tag]).page(params[:page]).per(9)
      else
        @books = Book.all.page(params[:page]).per(9)
      end
      @categorys = Category.where.not(id: 1)
  end

  def new
    @book = Book.new
    @tags = ActsAsTaggableOn::Tag.all
  end

  def destroy
    if user_signed_in? && current_user.id == @book.user_id
       if @book.destroy
         redirect_to root_path
       else
         render :show
       end
    else
      redirect_to new_user_session_path
    end
  end

  

  def show
  end

  def edit
  end
  
  def update
    if @book.update(book_params)
       redirect_to root_path
    else
       render :edit
    end
  end

  def category
    @books = Book.category(params[:id])
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
   end
  end
  
  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :price, :category_id, :tag_list, :review, :author, :image, :description, :star).merge(user_id: current_user.id)
  end
end
