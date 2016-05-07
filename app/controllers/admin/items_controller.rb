class Admin::ItemsController < Admin::BaseController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_path
    else
      flash.now[:error] = @item.errors.full_messages
      render :new
    end
  end

  def index
    @items = Item.all
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :image)
  end
end
