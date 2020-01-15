class ToppageController < ApplicationController
  def index
    @items =Item.includes(:images)
    @parents = Category.where(ancestry: nil)
  end

  def show
  end
end