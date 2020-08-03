class CreateKudos < ActiveRecord::Migration[6.0]
  def change
    create_table :kudos do |t|
      t.belongs_to :teacher, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true
      t.string :kudo

      t.timestamps
    end
  end
end