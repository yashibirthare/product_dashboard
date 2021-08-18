class FetchWishlistService
	require 'net/http'

	def initialize
		@base_url = "http://localhost:3000/"
	end

	def get_wishlists(product_id)
		# byebug
		uri = URI.parse(@base_url + '/updated_wishlist_quantity')
		@response = Net::HTTP.post_form(uri, product_id: product_id)
	
	end
	


end