class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string  :zipcode, null: false
      t.string  :prefecture
      t.string  :first_address, null: false
      t.string  :second_address, null: false
      t.string  :third_address
      t.references :user
      t.timestamps
    end
  end
end
