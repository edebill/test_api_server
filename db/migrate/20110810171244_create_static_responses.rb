class CreateStaticResponses < ActiveRecord::Migration
  def change
    create_table :static_responses do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
