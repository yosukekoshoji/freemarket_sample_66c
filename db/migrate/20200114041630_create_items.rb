class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      # t.references :seller, foreign_key: true
      # t.references :buyer, foreign_key: true
      t.string :name, null: false, index: true
      t.integer :price, null: false
      t.date :shipping_date, null: false
      t.string :condition, null: false
      t.string :delivery_method, null: false
      t.string :region, null: false
      t.string :postage, foreign_key: true, null: false

      t.timestamps
    end
  end
end
