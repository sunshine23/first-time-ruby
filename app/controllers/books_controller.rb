class BooksController < ApplicationController
  def index
  	@books = Book.all
  end
  def show
  	@book = Book.find params[:id]
  end
  def new
  	@book = Book.new
  end
  def create
  	@book = Book.new(book_params)
  	@author = Author.new(author_params)
  	@author.save!
  	@book.author = @author
	if @book.save
		redirect_to @book, notice: 'Book was successfully added.'
	else
		render action: 'new'
	end  
  end

  private
  def book_params
  	params.require(:book).permit(:name, :picture)
  end	
  def author_params
  	params.require(:author).permit(:first_name, :last_name)
  end
end