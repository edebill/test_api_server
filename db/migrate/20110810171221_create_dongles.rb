class CreateDongles < ActiveRecord::Migration
  def change
    create_table :dongles do |t|
      t.integer :widget_id
      t.integer :size
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
