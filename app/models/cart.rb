class Cart
  attr_accessor :contents
  def initialize(initial_contents)
    @contents = initial_contents || {}
  end

  def add_item(item_id)
    @contents[item_id.to_s] ||= 0
    @contents[item_id.to_s] += 1
  end

  def cart_items
    contents.map do |item_id, quantity|
      item = Item.find(item_id)
      CartItem.new(item, quantity)
    end
  end
end
