class AddDefaultsToItem < ActiveRecord::Migration
  def change
  	remove_column :items, :completed, :boolean
  	remove_column :items, :priority, :boolean

  	add_column	:items, :completed, :boolean, default: false
  	add_column	:items, :priority, :boolean, default: false

  end
end
