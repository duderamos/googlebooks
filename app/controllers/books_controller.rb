class BooksController < ApplicationController
  def index
    if params[:isbn]
      @books = GoogleBooks.search(params[:isbn])
    end
  end
end
