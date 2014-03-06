class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :description
      t.boolean :completed
      t.boolean :priority

      t.timestamps
    end
  end
end
