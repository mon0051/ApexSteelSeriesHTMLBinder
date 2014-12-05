class MapperController < ApplicationController
  def index
    @keys = Key.all
    @keys.each do |key|
      key.x_pos = key.x_pos + key.keyblock.x_offset
      key.y_pos = key.y_pos + key.keyblock.y_offset
    end
  end
end
