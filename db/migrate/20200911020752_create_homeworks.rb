class CreateHomeworks < ActiveRecord::Migration[5.2]
  def change
    create_table :homeworks do |t|
      t.string :subject
      t.string :content
      t.date :due_date
      t.timestamps
    end
  end
end
