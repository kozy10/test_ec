class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(item_params)
  	@item.save
  	redirect_to admins_home_path
  end

  private

	def item_params
		params.require(:item).permit(:title, :price)
	end
end
