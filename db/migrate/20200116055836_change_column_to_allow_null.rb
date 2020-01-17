class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column_nul :images, :image, true
    end
    def down
      change_column_null :images, :image, false
    end
  end
end
