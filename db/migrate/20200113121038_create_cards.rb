class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references  :user
      t.integer     :card_number, null: false
      t.integer     :year, null: false
      t.integer     :momth, null: false
      t.integer     :security_number, null: false
      t.timestamps
    end
  end
end
