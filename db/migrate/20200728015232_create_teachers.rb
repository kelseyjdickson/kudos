class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :teacher_name
      t.string :subject
      t.integer :room
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
