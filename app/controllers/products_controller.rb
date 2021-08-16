class ProductsController < ApiController
  def index
    category = Category.find_by(id: params[:category_id])
    products = category.present? ? category.products : Product.all
    render json: products, adapter: :json_api

  end



end
