class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :model
      t.string :color
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
