class CreateKeyblocks < ActiveRecord::Migration
	def change
		create_table :keyblocks do |t|
			t.text :name
			t.integer :x_offser
			t.integer :y_offset

			t.timestamps
		end
	end
end
