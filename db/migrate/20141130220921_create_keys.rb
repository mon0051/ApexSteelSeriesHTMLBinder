class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.text :scancode
      t.text :name
      t.integer :keygroup_id
      t.integer :keycode1
      t.integer :keycode2
      t.integer :keycode3
      t.integer :keycode4

      t.timestamps
    end
  end
end
