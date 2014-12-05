class AddXPosToKeys < ActiveRecord::Migration
	def change
		add_column :keys, :x_pos, :int
	end
end
