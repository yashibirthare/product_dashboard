class Product < ApplicationRecord
	has_and_belongs_to_many :categories
	
	after_update :quantity_update

	def quantity_update
		if saved_change_to_attribute?(:quantity) && attribute_before_last_save(:quantity) == 0 && quantity > 0
			
			@wishlists = FetchWishlistService.new.get_wishlists(self.id)

		end
	end

end
