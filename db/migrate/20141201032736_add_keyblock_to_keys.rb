class AddKeyblockToKeys < ActiveRecord::Migration
	def change
		add_column :keys, :keyblock_id, :integer
	end
end
