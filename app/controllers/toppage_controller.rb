class ToppageController < ApplicationController
  def index
    @items =Item.all
    @parents = Category.all.order("id ASC").limit(13)
  end

  def show
  end
end