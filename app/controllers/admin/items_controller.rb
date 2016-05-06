class Admin::ItemsController < Admin::BaseController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_path
    else
      flash.now[:error] = "You done goofed"
      render :new
    end
  end

  def index
    @items = Item.all
  end

  private

  def item_params
    params.require(:item).permit(:name, :price)
  end
end
