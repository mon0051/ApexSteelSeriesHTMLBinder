class RemoveXOfferFromKeyBlock < ActiveRecord::Migration
	def change
		remove_column :keyblocks, :x_offer
	end
end
