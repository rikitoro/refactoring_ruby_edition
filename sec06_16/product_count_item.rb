class ProductCountItem
  def initialize(search_criteria)
    @search_criteria = search_criteria
  end

  def product_count_item(search_criteria)
    criteria = search_criteria
    ProductCountItem.find_all_by_criteria(criteria)
  end
  
end