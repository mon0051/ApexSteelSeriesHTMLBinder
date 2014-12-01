class CreateKeyGroups < ActiveRecord::Migration
  def change
    create_table :key_groups do |t|
      t.text :name
      t.text :color1
      t.text :color2
      t.text :color3
      t.text :color4

      t.timestamps
    end
  end
end
