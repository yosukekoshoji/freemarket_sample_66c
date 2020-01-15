class CreatePhoneNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_numbers do |t|
      t.integer :phone_number,   null: false, default: ""
      t.references  :user
      t.timestamps
    end
  end
end
