class ChangeDataShippingDateToItem < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :shipping_date, :string
  end
end
