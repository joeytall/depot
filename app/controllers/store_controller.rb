class StoreController < ApplicationController
  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
  end

  def index
    @counter = increment_counter
    @products = Product.order(:title)
  end

end
