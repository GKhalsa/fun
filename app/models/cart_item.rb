class CartItem < SimpleDelegator
  attr_reader :item, :quantity

  def initialize(item, quantity)
    @item = item
    @quantity = quantity
    super(item)
  end
end
