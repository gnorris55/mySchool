class AddCheckedToNote < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :is_checked, :string
  end
end
