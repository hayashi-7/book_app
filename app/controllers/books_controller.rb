class BooksController < ApplicationController
  def index
    @books = Book.order('created_at DESC')
      if params[:tag]
        @books = Book.tagged_with(params[:tag])
      else
        @books = Book.all
      end
      @categorys = Category.where.not(id: 1)
    end
  def new
    @book = Book.new
    @tags = ActsAsTaggableOn::Tag.all
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

  def book_params
    params.require(:book).permit(:name, :price, :category_id, :status_id, :tag_list, :text, :author, :image).merge(user_id: current_user.id)
  end
end
