class ProductSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :price, :quantity, :category

  def category
    object.categories.pluck(:name)
  end

end