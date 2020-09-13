class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :body
      t.integer :homework_id

      t.timestamps
    end
  end
end
