# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string  :nicname,           null: false, default: ""
      t.string  :first_name,        null: false, default: ""
      t.string  :last_name,         null: false, default: ""
      t.string  :first_name_rattle, null: false, default: ""
      t.string  :last_name_rattle,  null: false, default: ""
      t.integer :birthyear,         null: false, default: ""
      t.integer :birthmonth,        null: false, default: ""
      t.integer :birthday,          null: false, default: ""
      t.text    :introduction
      t.text    :image
      t.string  :password,          null: false, default: ""
      t.integer :phone_number,      null: false, default: ""
      t.string  :email,             null: false, default: ""
      ## Recoverable
    end
    add_index :users, :email,                unique: true
  end
end
