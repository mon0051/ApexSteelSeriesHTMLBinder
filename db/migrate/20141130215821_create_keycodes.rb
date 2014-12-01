class CreateKeycodes < ActiveRecord::Migration
  def change
    create_table :keycodes do |t|
      t.integer :code
      t.text :mapped_action

      t.timestamps
    end
  end
end
