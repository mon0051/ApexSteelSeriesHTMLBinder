class AddClassToKeys < ActiveRecord::Migration
  def change
    add_column :keys, :eclass, :text
  end
end
