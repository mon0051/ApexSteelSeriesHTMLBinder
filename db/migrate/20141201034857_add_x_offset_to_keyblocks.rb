class AddXOffsetToKeyblocks < ActiveRecord::Migration
	def change
		add_column :keyblocks, :x_offset, :integer
	end
end
