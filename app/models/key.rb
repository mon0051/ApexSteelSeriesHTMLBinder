class Key < ActiveRecord::Base
  belongs_to :key_group, :foreign_key => 'keygroup_id'
  belongs_to :keyblock
  belongs_to :keycode, :foreign_key => 'keycode1'
  belongs_to :keycode, :foreign_key => 'keycode2'
  belongs_to :keycode, :foreign_key => 'keycode3'
  belongs_to :keycode, :foreign_key => 'keycode4'
end
