class AddYPosToKeys < ActiveRecord::Migration
	def change
		add_column :keys, :y_pos, :int
	end
end
