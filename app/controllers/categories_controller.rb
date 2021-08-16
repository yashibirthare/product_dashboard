class CategoriesController < ApiController
	def index
		categories = Category.main_c

		render json: categories, adapter: :json_api
		
		
	end
end


