class Item
  def initialize(quantity, item_price)
    @quantity = quantity
    @item_price = item_price
  end
  
  def price
    quantity_discount = [0, @quantity - 500].max * @item_price * 0.05
    shipping = [base_price * 0.1, 100.0].min    
    return base_price - quantity_discount + shipping
  end

  def base_price
    @quantity * @item_price
  end
end